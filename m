Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9EAC982CC
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9juRtklk4rpKxsELLDxQpuNfcnYA7hSotB4Q4cyP0m8=; b=hs5IWNVFz1fduZf0eKE++x2Hra
	NDeTZiEoNfRFwn5KDi3QHQTwUkmUibHrvgsyEg/dVp3Fx9D0UhLoB10rJSlOL+SN7beK3s9OIuLEi
	ENR6eay1h4BELG8dbDxIZJrDIVIwqT15YaJporJ1TKB9zg6EcJWcx1oX0JMOPA5z4vpbma+fOvaFg
	NVZnYjwGMdy+ccBmPSdpn2o/tg9me8kWJjBp+ypCdDWa/yjGLem8D8PcF365s35rK6hfJLCtmkqSF
	9Frth6K+9tc98rN9PolqQobSSQqMFcvGwyHaM4zQEuPwcbl0+vXH3vM/rit+zBw70864YhFoXEmu3
	RfZocpsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8D5U-0000000H7KP-15ky;
	Sun, 20 Sep 2026 08:39:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8D5S-0000000H7Ji-000j
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 08:39:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68K8VqB72873409
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 08:39:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2AGAP2Ybmw0L7jOZJjvxtsmn
	LMJVGg8ukn0BH3Z2m38=; b=EbmYetsuXA9InbIe1SWN3OR7BiVZ4a3X8RJgVnaV
	+1WZFbhyVVg9phlno0Fi0kZuD+Ro8v2kNF14xyTq3IV71pJfgqeQXD6a0mn4ag49
	keQ4ibW5j87Dqcr0xfyPbnLD2I4Aolnhu5He0lwPgpqBRc580LAjKZmHWs3HiPvT
	Y7wlVro2lGOuuOW8dB05hikiOZUz5nTRbcjk0lJmad616dI0iKCXQ1yjoNxgYMsq
	ZCy8US5c7XyxvORavdCKc67m0z9k7tZWYxMggSvACs/OrxJ67293mcM5BspNoHcs
	R9wEFcVi0kJh8+OAxILSDBzGfPgnAZpJgrzDYz4m2NgAkg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gshbsarhb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 08:39:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93a0312937eso283315285a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 01:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789893588; x=1790498388; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2AGAP2Ybmw0L7jOZJjvxtsmnLMJVGg8ukn0BH3Z2m38=;
        b=ZUQ+xrB/SItPLDSzlMiOgeHqdz86vjtkWuObnYtskO51zUdv9ratnRTJEWaYmWAmJA
         Jdt9n2oZBerkDTq+b5OWGtCi8nGyPQvb55ePAJ3mB0PIcxekX70L52QiOXr7stl+KjTl
         F9Crp+1S9n2Z/jLdvG4H6huKrhlhbSpHz89qSPY0U8QKRkC6yQI9Mfiv0exBZ9aRChMm
         1sCC3fiey+M2CGuxefif/ZRrsQ7x2ftrPBgrGnjEbrDqzm8A0U84vE5cYfP8GgW/wOUQ
         qD9JUPr8qGx9DYuksnZv+gvjjDzsSDyQOhDpsCcK/YtX/vTTXdslzHexfrM79iMZbiiE
         S/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789893588; x=1790498388;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2AGAP2Ybmw0L7jOZJjvxtsmnLMJVGg8ukn0BH3Z2m38=;
        b=dOrE11V44ptWhdJwNkbGs3gE1nFFbpAzb5B8xkfEDuTB9vrOjRJMs+ecwLeVqmuw1F
         1O7lgssn50+ArrRQUb6LJEI+3YnuHwlOYqs76m3vijrSAbovSbwyYnHrU3I6YnWKlHsv
         mfpEUud5Qw9TaCSesYbzP4+RAdql8ZKESf/hQelY7P+X9Rd/OWXCoRuJgf1HCB9KXTcy
         CpiivLvBkYEouRl0J2njVSDDrQ1lfj1ZmNDR09InizSkpU6CI2vV+h5LgCPzjI5RPZ6Z
         cKqOjfpBYtSfSclj3VEZukqOQDWkMPWvDcD9WBcwLfEwsiOOKetxslqiHZWYR14SfZ6I
         ybEA==
X-Forwarded-Encrypted: i=1; AKwUvBxY3shooLBT9meauR0CILetZJ63Cxn3VbQa7jPPuDoxr+nSDKKSKu1RLVYY+UycrYxRFjpJcyaQrKb8ax6oXA==@lists.infradead.org
X-Gm-Message-State: AFuF++kQdWlWUDYJ3ZXpVVMa95lp8SYrIGeccWTn+lJZzs+U8jA6Akgc
	FCFhBbUXgde/5LDhf11+xCkykepSaC44MAI6EBEO1/mSIQ/yhY+tgQMdD9k+pmxu4fEWrnkmyUL
	FwDkyzZT3T4AK00KYW6OwktMyJ7RHhJGxLNSZGhL7do3sBtL5Qv/8wTK/s4NGpMukXMSAxR3VD5
	4=
X-Gm-Gg: AYBFou3a/a63r21FH/5pW9tns+fVxMd07YXKs1iiRIV7ny3Bvb8xw4PObovj0CcSCB6
	W4ZAU9j0RU/5xqR8wA++Uebx6lMr3/qIuwKKhxi2TWWyZ6E0zAgsRzfKjbV2+I0wSJMysGmsC0a
	O4JdceVxqEDu7nTMoOcQkQgwyXUF3NihqklcsyRLqZ3N6nF7+MzZQ5IJHljOnsPUUVqPZH5Zn3p
	Io+pxWky0QmWPZkraWf5gd7N9rpPBWNAlj8SFHDmHHnvS3tch9hyJl/VbtB8P5rInVuVikqeRck
	YP7kXEYjAGVK+53uTLesT+EIn43KqrhrzLE4ef5FSuzvkYFCyHtpCavRj0uvRhrkM7ypyvU78Vw
	dNtnVbRbpHwN49w==
X-Received: by 2002:a05:620a:462a:b0:939:3b56:c416 with SMTP id af79cd13be357-93bf5523983mr486565885a.8.1789893588221;
        Sun, 20 Sep 2026 01:39:48 -0700 (PDT)
X-Received: by 2002:a05:620a:462a:b0:939:3b56:c416 with SMTP id af79cd13be357-93bf5523983mr486564585a.8.1789893587744;
        Sun, 20 Sep 2026 01:39:47 -0700 (PDT)
Received: from localhost ([188.216.77.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fc52a5b6esm94919145e9.4.2026.09.20.01.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 01:39:46 -0700 (PDT)
Date: Sun, 20 Sep 2026 10:39:46 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak
 when the PHY clock fails
Message-ID: <aq-b0sgCy6ILmWSc@lore-desk>
References: <20260919174223.2356964-1-coiaprant@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260919174223.2356964-1-coiaprant@gmail.com>
X-Proofpoint-GUID: F6GVrJ4A-WjJ2cqsbvZR0a_qxSv7QGdV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIwMDEyNCBTYWx0ZWRfX+keJ53fgxn9q
 220hUyLLCMC4/Lb42E0ciUb2+bcEA9ZLHxnCVn7VdG3qZhNF5582N39R2RPDDHX91mAb0rXrVhj
 lupBnDXQZ7sYmODURNR8BlCEhsNKm/WikTfJjQDudIUm/HbPa2seH802CGMzMTRZB/bXCUkPJrO
 7j4Bd+ebKMQFujlDzEUGPJbDBIgR71D3CtB/uUYiTBlK4iaEj/HOi/d2RevHf8aV9Z0pU7XkK8C
 GEbvOixz2dtsWVILca+yY4v9zcSEWe53gx3dfYWRocrmACR/lltb2rdpHtsOP3JD6FhSdvJcDTV
 nJ0y3sIiFw/Nl3sk6wGg/k2MJq+TawzqWL4R0/VkKIxWAtgxC7xHe0O9eHRkhXx+UkOBEbXkK6M
 AToy4/J71d98qKUZYn8/DIYyGkRaoAPPWiOPFz/KkUmxZP1cW2MQvpFjImoUPhvRebhR+sJsLJa
 WCwC+OL2Zo3wDccCl/w==
X-Proofpoint-ORIG-GUID: F6GVrJ4A-WjJ2cqsbvZR0a_qxSv7QGdV
X-Authority-Analysis: v=2.4 cv=bPqDs/+Z c=1 sm=1 tr=0 ts=6aaf9bd5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=WpTaRW6qxYHRGzLzQsVYzg==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=xsftiwRyr5-5OFJR58EA:9 a=CjuIK1q_8ugA:10
 a=zIhQHG-rzOcrLlsejY0A:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIwMDEyNCBTYWx0ZWRfX0XfCNzXZ9I+h
 vLDMUY9ixGjoWD5wx+JndHaDAmq/SZK89F4YXYAUPt7dL26wHF/fgwAxZPfgb7NnRbew16HACiw
 2/dIOudX0i4cpcpnXkOwqJIh+lvOZHw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-20_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1011 impostorscore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609200124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_013950_048371_A5E21FF3 
X-CRM114-Status: GOOD (  17.98  )
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
Content-Type: multipart/mixed; boundary="===============0215956014615667326=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0215956014615667326==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lLE8aJHE80lsFHy5"
Content-Disposition: inline

--lLE8aJHE80lsFHy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> gmac_clk_enable() enables the bulk clocks first and then the optional
> PHY clock. If clk_prepare_enable() on the PHY clock fails, the function
> returns without rolling back the bulk clocks, and bsp_priv->clk_enabled
> stays false, so the later gmac_clk_enable(bsp_priv, false) becomes a
> no-op and the bulk clock references are leaked.
>=20
> Add the missing clk_bulk_disable_unprepare() on that failure path.
>=20
> Fixes: ea449f7fa0bf ("net: ethernet: stmmac: dwmac-rk: rework optional cl=
ock handling")
> Signed-off-by: Coia Prant <coiaprant@gmail.com>

Acked-by: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net=
/ethernet/stmicro/stmmac/dwmac-rk.c
> index 8d7042e689261..f3a98bd9d6ead 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -1163,7 +1163,10 @@ static int gmac_clk_enable(struct rk_priv_data *bs=
p_priv, bool enable)
> =20
>  			ret =3D clk_prepare_enable(bsp_priv->clk_phy);
>  			if (ret)
> +				clk_bulk_disable_unprepare(bsp_priv->num_clks,
> +							   bsp_priv->clks);
>  				return ret;
> +			}
> =20
>  			rk_configure_io_clksel(bsp_priv);
>  			rk_ungate_rmii_clock(bsp_priv);
> --=20
> 2.47.3
>=20
>=20

--lLE8aJHE80lsFHy5
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaq+b0gAKCRA6cBh0uS2t
rCAUAQCj0yfpPfa6URfV93oy7BQLAm5/S0I5F+E5Bxs9H7YvqwEA0d7mRWgJU5W3
57K2prdD0OU/F5c69mDQ0MLisskqwAs=
=MXlj
-----END PGP SIGNATURE-----

--lLE8aJHE80lsFHy5--


--===============0215956014615667326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0215956014615667326==--

