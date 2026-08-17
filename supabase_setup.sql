-- 1. Drop existing tables if you want a complete reset (Warning: This deletes all data!)
-- DROP TABLE IF EXISTS watering_history;
-- DROP TABLE IF EXISTS plants;

-- 2. Create the plants table
CREATE TABLE IF NOT EXISTS plants (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT,
  watering_frequency INTEGER NOT NULL DEFAULT 7,
  last_watered TIMESTAMPTZ DEFAULT NOW(),
  photo_url TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Enable RLS
ALTER TABLE plants ENABLE ROW LEVEL SECURITY;

-- 4. Create Policies (Granting full public access for development)
-- If policies already exist, you might need to drop them first or just ignore if it's a new project.
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE policyname = 'Public Access') THEN
        CREATE POLICY "Public Access" ON plants FOR ALL USING (true) WITH CHECK (true);
    END IF;
END $$;

-- 5. Create watering_history (Optional)
CREATE TABLE IF NOT EXISTS watering_history (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  plant_id UUID REFERENCES plants(id) ON DELETE CASCADE,
  watered_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE watering_history ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE policyname = 'Public Access History') THEN
        CREATE POLICY "Public Access History" ON watering_history FOR ALL USING (true) WITH CHECK (true);
    END IF;
END $$;
