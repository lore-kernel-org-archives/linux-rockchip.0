Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A924C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 09:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C51PNt1XvuBSWoW9R5LrWZWZlCpS71B0I9qlETi5pNU=; b=pewuqirFa/60oW+Jrkn54eDQ/Q
	m+W778xaRemPno8GhnVsg8yihQMdszoIdy+HCvmUqXNNPv7XkfOAcCFPNsE0FaqOPxVhrWKEsbfUG
	WLynfaTyi7GCYxQHvceR7Ru9d2U7gbAfHbvPkU3nbFFsCKmzM4qnu3gpToDIaWVJZUo9Eb+Q8izPQ
	3sSxobYi2TO8dvgW6yR1qR2ndbuZB5RYqat86/AuEaQQgqC/jNFSvPfM2efh9hHVqdhO85Pa96y3E
	GwfKRY7TPIzrJ1HNpcWjZuNklo20NKt4KZIakQdjJhM4ol6ivMHS+Zg1lIsKgNdNetZWKqbvxBitk
	DcUfu83Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Lg9-0000000CUXJ-2k2M;
	Thu, 17 Apr 2025 09:37:05 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Lg6-0000000CUUn-1ONh
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 09:37:04 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1744882617;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KU46HSnpvLXuZOfgMNdvR0/ligGmFs/Je4U/myrlfj4=;
	b=fjby8LHBLA82JSA+8R0HeRNRxl6gO84wofH3L+BpvoDmnJTBcPHSVuBFSDVO/q8csmedrf
	HlhHFJgvfn4R2jkQ5OS4J3mnA9igC6evwtSV+bF5Z7uI4WMePjMpaz3rSCDAzkGQqhUtAZ
	m5LP6SReaViyVTXIzp//ECDIcGfM+LMuy3YegybwV6VYd8emsTcVn4tXqUcZgjQozgy1hV
	p6LPDdKlIaC4HaznttUKGzVHcA2klkgcq/Mmk/nVpKVeAZEqbC3Bu0ir7Do2PsykFvu4Ck
	x24LCOQoT+Me3Rw01f9rmVUngLylH4yTxM3+LJEQ5X2cuSj+1Np2CR0l1GSfRg==
Date: Thu, 17 Apr 2025 11:36:49 +0200
Message-Id: <D98T9GK0GEVB.338F9JEWOJOYM@cknow.org>
Cc: <linux-pci@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 "Bjorn Helgaas" <bhelgaas@google.com>, "Lorenzo Pieralisi"
 <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add system PM support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Shawn Lin" <shawn.lin@rock-chips.com>
References: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
 <D98RKO927TBG.8ZRWD3GCLSXH@cknow.org>
 <0b32129e-ecb6-983f-636c-4e9177117ed4@rock-chips.com>
In-Reply-To: <0b32129e-ecb6-983f-636c-4e9177117ed4@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_023702_702650_26DCDED6 
X-CRM114-Status: GOOD (  21.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4206865504365830334=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4206865504365830334==
Content-Type: multipart/signed;
 boundary=1b39d20ded45bf0b26d7451642114f28ab1a8e1fbc236df4b2079963980a;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--1b39d20ded45bf0b26d7451642114f28ab1a8e1fbc236df4b2079963980a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Apr 17, 2025 at 10:29 AM CEST, Shawn Lin wrote:
> =E5=9C=A8 2025/04/17 =E6=98=9F=E6=9C=9F=E5=9B=9B 16:17, Diederik de Haas =
=E5=86=99=E9=81=93:
>> On Fri Apr 11, 2025 at 8:14 AM CEST, Shawn Lin wrote:
>>> This patch adds system PM support for Rockchip platforms by adding .pme=
_turn_off
>>> and .get_ltssm hook and tries to reuse possible exist code.
>> ...
>> s/exist/existing/ ?
>>=20
>>> ...
>>>
>>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>>> ---
>>>
>>> Changes in v2:
>>> - Use NOIRQ_SYSTEM_SLEEP_PM_OPS
>>>
>>>   drivers/pci/controller/dwc/pcie-dw-rockchip.c | 185 +++++++++++++++++=
++++++---
>>>   1 file changed, 169 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pc=
i/controller/dwc/pcie-dw-rockchip.c
>>> index 56acfea..7246a49 100644
>>> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>> @@ -21,6 +21,7 @@
>>>   #include <linux/regmap.h>
>>>   #include <linux/reset.h>
>>>  =20
>>> +#include "../../pci.h"
>>>   #include "pcie-designware.h"
>>>   ...
>>>  =20
>>> +static int rockchip_pcie_suspend(struct device *dev)
>>> +{
>>> +	struct rockchip_pcie *rockchip =3D dev_get_drvdata(dev);
>>> +	struct dw_pcie *pci =3D &rockchip->pci;
>>> +	int ret;
>>> +
>>> +	rockchip->intx =3D rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR=
_MASK_LEGACY);
>>> +
>>> +	ret =3D dw_pcie_suspend_noirq(pci);
>>> +	if (ret) {
>>> +		dev_err(dev, "failed to suspend\n");
>>> +		return ret;
>>> +	}
>>> +
>>> +	rockchip_pcie_phy_deinit(rockchip);
>>=20
>> You're using ``rockchip_pcie_phy_deinit(rockchip)`` here ...
>>=20
>>> +	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
>>> +	reset_control_assert(rockchip->rst);
>>> +	if (rockchip->vpcie3v3)
>>> +		regulator_disable(rockchip->vpcie3v3);
>>> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);

I just noticed another inconsistency:

In ``rockchip_pcie_probe`` from line 657 I see this:

```
deinit_clk:
	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
deinit_phy:
	rockchip_pcie_phy_deinit(rockchip);
disable_regulator:
	if (rockchip->vpcie3v3)
		regulator_disable(rockchip->vpcie3v3);
```
https://elixir.bootlin.com/linux/v6.15-rc1/source/drivers/pci/controller/dw=
c/pcie-dw-rockchip.c#L657

Which is not in the same sequence as the code in this patch.
Shouldn't those be in the same sequence?

>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int rockchip_pcie_resume(struct device *dev)
>>> +{
>>> +	struct rockchip_pcie *rockchip =3D dev_get_drvdata(dev);
>>> +	struct dw_pcie *pci =3D &rockchip->pci;
>>> +	int ret;
>>> +
>>> +	reset_control_assert(rockchip->rst);
>>> +
>>> +	ret =3D clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
>>> +	if (ret) {
>>> +		dev_err(dev, "clock init failed\n");
>>> +		goto err_clk;
>>> +	}
>>> +
>>> +	if (rockchip->vpcie3v3) {
>>> +		ret =3D regulator_enable(rockchip->vpcie3v3);
>>> +		if (ret)
>>> +			goto err_power;
>>> +	}
>>> +
>>> +	ret =3D phy_init(rockchip->phy);
>>> +	if (ret) {
>>> +		dev_err(dev, "fail to init phy\n");
>>> +		goto err_phy_init;
>>> +	}
>>> +
>>> +	ret =3D phy_power_on(rockchip->phy);
>>> +	if (ret) {
>>> +		dev_err(dev, "fail to power on phy\n");
>>> +		goto err_phy_on;
>>> +	}
>>=20
>> ... would it be possible to reuse ``rockchip_pcie_phy_init(rockchip)``
>> here ?
>>=20
>
> yeah, will do.
>
>> otherwise, ``s/fail/failed/`` in the error messages
>>=20
>>> +
>>> +	reset_control_deassert(rockchip->rst);
>>> +
>>> +	rockchip_pcie_writel_apb(rockchip, HIWORD_UPDATE(0xffff, rockchip->in=
tx),
>>> +				 PCIE_CLIENT_INTR_MASK_LEGACY);
>>> +
>>> +	rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE=
);
>>> +	rockchip_pcie_unmask_dll_indicator(rockchip);
>>> +
>>> +	ret =3D dw_pcie_resume_noirq(pci);
>>> +	if (ret) {
>>> +		dev_err(dev, "fail to resume\n");
>>> +		goto err_resume;
>>> +	}
>>> +
>>> +	return 0;
>>> +
>>> +err_resume:
>>> +	phy_power_off(rockchip->phy);
>>> +err_phy_on:
>>> +	phy_exit(rockchip->phy);
>>=20
>> I initially thought this sequence was incorrect as I looked at the
>> ``rockchip_pcie_phy_deinit`` function:
>>=20
>> 	phy_exit(rockchip->phy);
>> 	phy_power_off(rockchip->phy);
>>=20
>> https://elixir.bootlin.com/linux/v6.15-rc1/source/drivers/pci/controller=
/dwc/pcie-dw-rockchip.c#L411
>>=20
>> But the ``phy_exit`` function docs says "Must be called after phy_power_=
off()."
>> https://elixir.bootlin.com/linux/v6.15-rc1/source/drivers/phy/phy-core.c=
#L264
>>=20
>> So it seems the code/sequence in this patch is correct, but
>> ``rockchip_pcie_phy_deinit`` has it wrong?
>
> Right, it's wrong in rockchip_pcie_phy_deinit() although it doesn't
> matter, as the PHY drivers used by Rockchip PCIe actually don't provide
> .power_off callback. :)

If you have no objections, I'd still like to send a patch to fix it.

Cheers,
  Diederik

>>=20
>>> +err_phy_init:
>>> +	if (rockchip->vpcie3v3)
>>> +		regulator_disable(rockchip->vpcie3v3);
>>> +err_power:
>>> +	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
>>> +err_clk:
>>> +	reset_control_deassert(rockchip->rst);
>>> +	return ret;
>>> +}
>>> +
>>>   static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk=
3568 =3D {
>>>   	.mode =3D DW_PCIE_RC_TYPE,
>>>   };
>>=20
>> Cheers,
>>    Diederik
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


--1b39d20ded45bf0b26d7451642114f28ab1a8e1fbc236df4b2079963980a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaADLsgAKCRDXblvOeH7b
buE7APwIY/pIxnQmlohVLsljX/iuDh2q+Fl6nFsdkXWXFnqBdQD8D0apYOAOSd1+
uvx6Xn4pICaAD8fVx2/P183T0RgNvAw=
=ErJm
-----END PGP SIGNATURE-----

--1b39d20ded45bf0b26d7451642114f28ab1a8e1fbc236df4b2079963980a--


--===============4206865504365830334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4206865504365830334==--

