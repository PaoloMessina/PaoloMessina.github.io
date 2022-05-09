ALTER TABLE public.d_adi_violazioni ALTER COLUMN importo_pagamento_minimo TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;

ALTER TABLE public.d_adi_violazioni ALTER COLUMN importo_pagamento_massimo TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;

ALTER TABLE public.d_adi_violazioni ALTER COLUMN importo_pagamento_scontato TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;

ALTER TABLE public.d_adi_violazioni ALTER COLUMN importo_pagamento_misura_ridotta TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;



ALTER TABLE public.d_prosa_sanzioni ALTER COLUMN importo_pagamento_minimo TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;

ALTER TABLE public.d_prosa_sanzioni ALTER COLUMN importo_pagamento_massimo TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;

ALTER TABLE public.d_prosa_sanzioni ALTER COLUMN importo_pagamento_scontato TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;

ALTER TABLE public.d_prosa_sanzioni ALTER COLUMN importo_pagamento_misura_ridotta TYPE numeric(19, 2) USING importo_pagamento_minimo::numeric;
