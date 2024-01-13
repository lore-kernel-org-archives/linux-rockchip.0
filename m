Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B136C4706C
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jan 2024 17:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENJWGcawmr8mpWs3T8qcLMjiwphPT+cBj1ONdDxPdh8=; b=Swyht4T+26kbVj
	nIXPCcXztNXhn7pkYvCZglUltjr4HG0M0HoXhTyuh2ClkU0+atcmn8w7uDlYfCFAIH/7ip06rM2L2
	lDJkAnp7Yj+1kmOuikAVPOP/RMxweKomxRocRl7J8YXX58TqjPx1/ubduPHeTlU5wP4ndqAXPIAe4
	GMsZucEsVGxNfUjawKahV71/QewZ/0yU4ivWNsnbWjGgtHzY6qoYWybah0kvWM+Ovo1pQUtjMiNBM
	Gdf8i/kmh27qwSdRzEB827+SuBiDYRm050AHeFgtWpt7GtSSDFulDSidvcBd/bvUaO/rgnT7j4YT1
	VNQNxDqmua42rVeTZFCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOhMt-005QS9-1Y;
	Sat, 13 Jan 2024 17:00:23 +0000
Received: from pv50p00im-zteg10011501.me.com ([17.58.6.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOhMr-005QPe-32
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jan 2024 17:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kyuhyuk.kr; s=sig1;
	t=1705165205; bh=rk1IHF6mZGWlBgZYgq2bepEQ66x9m0Dv71w4HAlD3Oo=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=rGG4FD6RgDzucbeX1xzpFkXncTHoqRRl/5ATSR6P1eU6ETot97Cxazu+wKMI6txgm
	 C5wNjsuIj/JveeUwck6HAGbhhqyJmI/Exm3rUDn4x9KClMiQp4uYk/RiT45EMsEsNM
	 QwYOEODA9EGdaEQNx9TG6NnBCa216YbH+a2OsjzFeUWUOwSuo5MDG8wYLFLhPT56u7
	 fojaXpN2jJeeq/wEJFTl8Vs1UgEPxq+IduGoYO3ApIr36el4SpfZD57CZU++2rxxPf
	 J7DHPQ/yIirGgqRHZpbtDvrSFOdGtJjAOuodozwsY93NB0/ZhFd0zGllyDq1hLUZCy
	 UgH+XkAWB8k8Q==
Received: from kyuhyuk.kr (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id C67DC4A01A9;
	Sat, 13 Jan 2024 16:59:59 +0000 (UTC)
Date: Sun, 14 Jan 2024 01:59:42 +0900
From: KyuHyuk Lee <lee@kyuhyuk.kr>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S
 board
Message-ID: <ZaLAMRi+HzfSj8sl@kyuhyuk.kr>
References: <20240112134230.28055-1-lee@kyuhyuk.kr>
 <0ba3e9aa-4546-461a-a90b-0c99bfa9da48@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ba3e9aa-4546-461a-a90b-0c99bfa9da48@linaro.org>
X-Proofpoint-ORIG-GUID: 1FWd14Z6YbyKI7QvVdGicmRaqIYR6T5A
X-Proofpoint-GUID: 1FWd14Z6YbyKI7QvVdGicmRaqIYR6T5A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-13_07,2024-01-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0 adultscore=0
 mlxlogscore=740 bulkscore=0 mlxscore=0 clxscore=1030 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2401130143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_090021_999460_0578918A 
X-CRM114-Status: GOOD (  10.73  )
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

On Fri, Jan 12, 2024 at 06:44:26PM +0100, Krzysztof Kozlowski wrote:
> On 12/01/2024 14:42, KyuHyuk Lee wrote:
> > Add device tree binding for Hardkernel ODROID-M1S board based on
> > RK3566 SoC.
> > 
> > Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> 
> Your system bounces emails from Conor, so just formality:
> 
> Fix the vendor prefix.
> 
> Best regards,
> Krzysztof
> 

Thank you for reviewing.

Ok. Will fix it.

Thank you,
KyuHyuk Lee.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
