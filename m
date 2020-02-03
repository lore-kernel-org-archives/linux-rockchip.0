From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] regulator: mp8859: add supply entry
Date: Mon, 03 Feb 2020 13:28:14 +0100
Message-ID: <2041997.mfULgpQ279@diego>
References: <20200203110034.1448-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200203110034.1448-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 3. Februar 2020, 12:00:33 CET schrieb Markus Reichl:
> Add vin_supply to the regulator description to support a nice
> regulator tree.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

double checked the datasheet for the supply name and all is correct, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/regulator/mp8859.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/regulator/mp8859.c b/drivers/regulator/mp8859.c
> index 1d26b506ee5b..6ed987648188 100644
> --- a/drivers/regulator/mp8859.c
> +++ b/drivers/regulator/mp8859.c
> @@ -95,6 +95,7 @@ static const struct regulator_desc mp8859_regulators[] = {
>  		.id = 0,
>  		.type = REGULATOR_VOLTAGE,
>  		.name = "mp8859_dcdc",
> +		.supply_name = "vin",
>  		.of_match = of_match_ptr("mp8859_dcdc"),
>  		.n_voltages = VOL_MAX_IDX + 1,
>  		.linear_ranges = mp8859_dcdc_ranges,
> 
