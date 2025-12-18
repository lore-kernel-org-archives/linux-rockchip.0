Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2934FD6E2B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 16:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAzLC+pUVWBRaQ4Tgu+spePxyLu9nVd5/ZGVDiRnBiE=; b=Vz4QukMCNWsOXL
	Rvz+QOMJT3gimKPN0PQZsHVPtdeA4K8U9rEJYUZg1QMS67FBVM9v8S4yktcYjJiDLNZJX0sy/tehQ
	afwgUZbEdQKjayI0la5wq3xtyoaOa9lh+jzDTViChnyKGHoCdmoOmGyJMOteVVN6UH6VA2Spzwstv
	h7c9nxyxg6nVK5oBnky3FAalIQ95Aae/mClweJ6V0PD9OlT/iXfGlnS8Tnzqi65bgGnQTL3RmRixy
	ZBxNBFyEwMktmPlNhJq+SRf3PcciYYKuQ2l4h1Em3WCo8SBAzCh+GWaUO/F9mt4c62IGnxhJ1EMNv
	GHwe65ukGXyX1g6nEUJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH4j-00000008qNS-46J2;
	Thu, 18 Dec 2025 16:42:01 +0000
Received: from sender4-of-o55.zoho.com ([136.143.188.55])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH4h-00000008qMk-1W4d;
	Thu, 18 Dec 2025 16:42:00 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1766076111; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VZVOXfhWO2+fL3tvJ5QOL4osPgh7YsMea6XvxbjjozEGSb6nxNaEqqLi+nw6IcZ/H/6OcLzAnBW7XO6HlbDzo/XAFIib/sMnkuPZFRMgCSQxhMrRhm1nsbV9s/DTydKdgYz/um6pcPSZ+Yzcf7E+XyH6+vP5QiVNPhmPLGfnXl0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766076111; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=flkwXIsuycmRFZwE+EeysAAbLRNI56VtCwdtbrplhks=; 
	b=GaJtf7mT2vNoxFDQZGUEdHFDATd4AG/OYcg9V8887rYefRL2plW6CTJYplnG3qiLzgSZVin5hVt/gsXfUiyY1a+7rQRmn13XHljYVhfL4U5RP6sKC5T4XCUkZOmksb/4LAubtGx2A5077GMZaDnI/QnryFhW6eiceFM1/EeW9Ro=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=thesnowfield@sakurapi.org;
	dmarc=pass header.from=<thesnowfield@sakurapi.org>
Received: by mx.zohomail.com with SMTPS id 1766076108310603.0329261278846;
	Thu, 18 Dec 2025 08:41:48 -0800 (PST)
From: Chiyuki Akatsuki <thesnowfield@sakurapi.org>
To: krzysztof.kozlowski@oss.qualcomm.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	i@chainsx.cn,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	stable+noautosel@kernel.org,
	Chiyuki Akatsuki <thesnowfield@sakurapi.org>
Subject: Re: [PATCH RESEND] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Fri, 19 Dec 2025 00:40:21 +0800
Message-Id: <20251218164021.495-1-thesnowfield@sakurapi.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251217091808.38253-2-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_084159_467525_0D379002 
X-CRM114-Status: UNSURE (   4.34  )
X-CRM114-Notice: Please train this message.
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

Thanks for the patch.

Confirmed that the interrupt flags should use IRQ_TYPE_LEVEL_xxx,
and tested on the SakuraPi RK3308B board, works fine.

Acked-by: Chiyuki Akatsuki <thesnowfield@sakurapi.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
