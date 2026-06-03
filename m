Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC4FDCD6E57
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eX5aonRip5Fffve+ovgG262LkNFCYYCKJk05Y4MsIk=; b=r6DAJaI9auRRP+
	OpgoXYIT/PdhhR9ghgeuRPG0dKihhVsJVywHT9/HmAxfU+m8CfE9JqNwSiw5RzRaXGHmmJxjRNTRO
	0qf46Z1UwcYCY5ZekVm9HjgxfvA6ixN7cWoOak20ltfM5Ru6pbrIVdyoZX7II9ZrRjuXITPh8gCdS
	Q3gHgHqX3Qc4I7MUY9G0fM3E2v5jl1A9OuTdEynHHNW6kmLyFAcEDtXsIiabbJifcs0K+kyq8cRDb
	pSlMVU6BYYy1jPGsQGNHcqgLTp/DzDg2sKf9Uv53ojlZs+GsoxRKqfVNaiScxv3aUHGkss1yAzU+I
	iDR5XfilNvfdZYT3LWWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUuYN-0000000Fuc7-3KdV;
	Wed, 03 Jun 2026 22:59:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUuYL-0000000FubH-1o1o
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jun 2026 22:59:14 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653JwPaX2076090
	for <linux-rockchip@lists.infradead.org>; Wed, 3 Jun 2026 22:59:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ONnM8cPGqCvQUEArvOdVRHLA
	7AjrNnYCfdYyBl3uu6Q=; b=JUsHQt0DxYLPJKgSTR9tREQC+/92i/jaL10JeZka
	jx+w7LeQXnnmF1WukUK+kcEWnvuxt/l+kFvuthhHCI4AaDnS76xdU7CZe4PJzwyz
	K4pbBszfCfx+alv7S7iFmtT9ExLdFXbo7XeJLWvND6VGIKR9I6rEOyaIC7iQ90Xg
	9iCkzFtDeVSeFE9jXjV05X+B3ZHU8eGLF3uNdxHjQ9Y5yb4DSJt1nRiG8no/6vX1
	96gpOiH9tdw6cUja413gftwtc/vaKQ+VyGGi+jsd9T/Go18S/qq31wYXJCMNU+uF
	jhitbT5yARcAW7GDcsEOVJ2x/bh93aalFtYzYhWqyr/g6Q==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejev1c0wj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 22:59:12 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-963b2863d62so53271241.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 15:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780527552; x=1781132352; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ONnM8cPGqCvQUEArvOdVRHLA7AjrNnYCfdYyBl3uu6Q=;
        b=ihJzcAHJi1bxEJOXQNJoi/fTurwHDvcuYUzYXtRGxQd/dtvkL48z7rJPBUhpb3hJXh
         s9GqxIeEFWhnL147BfJPkNO/GB12mGXqLI0o39UssPAZPDqr2jgBXsYbETxmG0HbZebk
         mSVOYXQXU5MYrEj3hlgGQ9/q5aCBOl181Ryv4MMSenGvwbFT//RCfmFOhDvb6xI3MumM
         eTzYWT8A8DBy8wWMbgT7tv3jZnonCT7sxtxY/DOwWiOWDH2hma02O92mpSptC0Jkatep
         sIlS9/s8w/2pLL5i+1ml0K6Mpeyg2k/hZZ/Lh45RebyDvWLbFXdaTRaHiEv05oEY3+eB
         e7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780527552; x=1781132352;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ONnM8cPGqCvQUEArvOdVRHLA7AjrNnYCfdYyBl3uu6Q=;
        b=gyZJCMQ5r28VkJmW2qFLdA+5xUGzBNS5gZcFsosOFWbZWg48+zel5mxbSpokEAGE/L
         YhPdRI2jDwms449Ia43x8XIz0X/YO4Z7OVNXPieQWrRWhNBpynatmPgw0x7hynknONLL
         0bdeYXefolN9vUGlecTCkUp2kDljLI1C18u8P/1RI7jBcOEs9vXTsKKZaHInTCmcDo/f
         hp3QxHIinoV/Hzq6kV1/53FUMfYbY4xpiy38ufCNkxF7xW+8FI+O5/n0xTfdH8PovZPN
         i25kGMHGYt0bQNKwaa05w5W4J4DOi5xG0hfJnQo4cxtiGwrbs27iSK9Senw27z0uF3XE
         k2XQ==
X-Forwarded-Encrypted: i=1; AFNElJ+AWXovOth+78ljWryGy/cZ1+MEN2FN8fKCPsOvAqqNx4DxWPo/+VczgYRiUoNEzir4+AWQKxn0zX12R0v1rQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKtossGr54JBzOM796cv0jS5xarx4NvUs6ibCSOxf1Ub0/krpr
	V7uSQcCjySBsMpv8J+Ou+hF/G5Q1qNkxuA9HzGfF8ARese8PocsEmw9/LQCtBj80csov/lYF6xI
	FYdHiWzCZhGhJw36pV4s/gufMmi+GIgyIn1Q5rYiR7UnmkMqlomhQzDPsGPW8wwZ0ss2EiD5VMP
	c=
X-Gm-Gg: Acq92OFeHFh3KjfxneS7IKTnbK1vtSdI/owU98JofsKVgkqdl9rgv5Id6pSx/o+X44T
	D/KAFr67CVaa/DhrJp++At+8E7FItXGoLfPqaXBW1UBwrXniNJwlbFpNa9VI5fQm5nUDnRXtZyl
	uUkYxGQ4mWHO2xt8X0AhQgSbqf8rC0n7FI+Frk39hw3IOj424bAAE3Wi8iJ2eCGHiKCj+f9gqNF
	xy810z6NRidhnnDX2fBzJmIbxPhmXn3opYtGOb2g7IlWLXEw+1rW3zlIablaZS73QYzMQzr8tuS
	EudLIkwmJVnYNd1kxuENjhK1IeYg5dX2FCQSrAmc6v+Gw6eKlzL94d4ZfR+Yp+ULNMJwD3DD4EP
	cFi66Kvy6OLWEuCqxj9by57EWFz0oFmsEbS6/7z9VOdEM/pqY4xwRvM3G/z/vP4EF+dy6iKbqER
	ob/9SIGGzPbZmbLSAucb4s+LlehsOb9qgIm5bkY5c+f3zlDw==
X-Received: by 2002:a05:6102:644b:b0:6d8:89a0:4ae4 with SMTP id ada2fe7eead31-6ec43376b39mr3216898137.18.1780527551688;
        Wed, 03 Jun 2026 15:59:11 -0700 (PDT)
X-Received: by 2002:a05:6102:644b:b0:6d8:89a0:4ae4 with SMTP id ada2fe7eead31-6ec43376b39mr3216884137.18.1780527551258;
        Wed, 03 Jun 2026 15:59:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97ac29sm880386e87.52.2026.06.03.15.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 15:59:08 -0700 (PDT)
Date: Thu, 4 Jun 2026 01:59:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-kernel@lists.infradead.org,
        Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev,
        linux-rockchip@lists.infradead.org,
        Julius Werner <jwerner@chromium.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: Add #{address,size}-cells to
 Chromium-based /firmware
Message-ID: <pfo7vpd3ooiyfuo3wjom7qzknnnkiyel2kdu5fjqqrq5nccysq@e63rs7lgdfl4>
References: <20260428200712.2660635-1-briannorris@chromium.org>
 <20260428200712.2660635-8-briannorris@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260428200712.2660635-8-briannorris@chromium.org>
X-Proofpoint-ORIG-GUID: jGIeRDMig3sBnlGsfZibmN-BI5wU6FA1
X-Authority-Analysis: v=2.4 cv=PNE/P/qC c=1 sm=1 tr=0 ts=6a20b1c0 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=1XWaLZrsAAAA:8 a=MUleZ9s-AAAA:8 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8
 a=iD_vE5mCeOLV2fS3_3cA:9 a=CjuIK1q_8ugA:10 a=TD8TdBvy0hsOASGTdmB-:22
 a=f0F4d6ZXEnSYrzQLsEx4:22
X-Proofpoint-GUID: jGIeRDMig3sBnlGsfZibmN-BI5wU6FA1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIyNCBTYWx0ZWRfXwStYnTd1EwpI
 C6FJKRnlPO2GRSmpmDhrKL7uWHYnfZSO8W2Ikck7bJlKQ8eYGw5AchLClIBzn8fd+b3A5qF0rgl
 xxtnnWjtcw5aVvNbwbM2i+aKSIAh8OcwN9EFSDYLv1lWK64PfkdqivX6Iy8bR/gRw7p+XDDNfXB
 ZY0/nVGBSjD85ExbUie0zmlkX0cWLjoElJDbqNARKJOUxbbkPHsDP+y4fQSNlGoraLUbnOdH734
 mS2Bbg4ktHYrULo+yrlA4IAEvNNhYZRsjotqiQzMYydbRmhtVsga/dwuywCz06B5mVsuw/yI91L
 R4m+rIRJuhe5onDmte4ck4kTHi1d+J1+1zALsh/bArT4w4d4Hk9Gj0hVA51mo5AmOHBh6anc6cs
 ZVWfDWT1Vz+SpSAiBMsw/FJlUKbPYDjht0CgNhBZllL7owOSCGARa9iSt82w0VqvA6K4KBa2C1V
 wwEdj3w03VYQVjNtAMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_155913_584468_18EC23AF 
X-CRM114-Status: GOOD (  19.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Apr 28, 2026 at 01:06:59PM -0700, Brian Norris wrote:
> Chromium/Depthcharge bootloaders may dynamically add a few device nodes
> to a system's DTB under a /firmware node. A typical DT looks something
> like the following:
> 
> / {
>         firmware {
>                 ranges;
> 
>                 coreboot {
>                         compatible = "coreboot";
>                         reg = <...>;
>                         ...;
>                 };
>         };
> };
> 
> Notably, the /firmware node has an empty 'ranges', but does not have
> address/size-cells.
> 
> Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
> non-translatable addresses") started requiring #address-cells for a
> device's parent if we want to use the reg resource in a device node.
> This leads to errors like the following:
> 
> [    7.763870] coreboot_table firmware:coreboot: probe with driver coreboot_table failed with error -22
> 
> Add appropriate #{address,size}-cells to work around the problem.
> 
> Note that Google has also patched the Depthcharge bootloader source to
> add {address,size}-cells [1], but bootloader updates are typically
> delivered only via Google OS updates. Not all users install Google
> software updates, and even if they do, Google may not produce updated
> binaries for all/older devices.
> 
> [1] https://lore.kernel.org/all/20241209092809.GA3246424@google.com/
>     https://crrev.com/c/6051580 ("coreboot: Insert #address-cells and
>     #size-cells for firmware node")
> 
> Closes: https://lore.kernel.org/all/aeKlYzTiL0OB1y3g@google.com/
> Fixes: 6e5773d52f4a ("of/address: Fix WARN when attempting translating non-translatable addresses")
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
