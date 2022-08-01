Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D09C19F2C
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Aug 2022 18:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9u3CzAU8l+Y39LMWfILQgs7ADRwvio3zIx8F+JfA1I=; b=jkL2UsYJRjGBi5
	vyrB2h0+M6tIVh9RrygGt+ndaDr9j1glL2ru6CSlFSwvBQbJ59LcMhDqg56mmiPd0cppcw6We+94F
	TmAzH3WHhbjJbKMnnzd8gR0w51X986uCjrssDI1Y03xbpUQ/6MgFbvmJhPgxLUuQKO5foHqJXxIkH
	qfGegOw8IuzZvRJHXnWVRt8IpjmHvQKpauHRm5Dmwyf/b1lwB0ZSOMwPOzyIufK2KcnuU9aa6M7T0
	tdVRbaONx0acn4igQG2dzviLQGd+yob6hYGIPcy6vWTU/LAgBl1xe39fwqM7z1tAp64H02MA+X1Db
	RSjfIadTm5CxtGUmqrow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIaHy-00961x-Sd; Mon, 01 Aug 2022 18:37:14 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIaHv-0095rE-Sz
	for linux-rockchip@lists.infradead.org; Mon, 01 Aug 2022 18:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1659379016;
	bh=XpvW2KGm+7Eri6BgmGU4YVNAdPx/qqDZZ5a0Ia/rFD8=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Fw3fVD2WM08K/0HVTLZ2V7MVgR2Oxb4McHFcPbv0GxYM4G1R1tRSZTJjzg1GGaYpi
	 dduj2WkceGMMkRN6Jy1Enbc69ErIgIbEyxn7SpubI/dD0RqLAKprDNTRo8j1Fgko74
	 TV1jJSRvWjgzUJAMC9UAZL/53YdCe31soLgJ0hOg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.146.18] ([217.61.146.18]) by web-mail.gmx.net
 (3c-app-gmx-bap33.server.lan [172.19.172.103]) (via HTTP); Mon, 1 Aug 2022
 20:36:56 +0200
MIME-Version: 1.0
Message-ID: <trinity-851eda2a-519f-4ef6-ad2b-6870b3b682ff-1659379016837@3c-app-gmx-bap33>
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Aw: [PATCH v4 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Date: Mon, 1 Aug 2022 20:36:56 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220619082605.7935-2-linux@fw-web.de>
References: <20220619082605.7935-1-linux@fw-web.de>
 <20220619082605.7935-2-linux@fw-web.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:INYgd8sb5GwLhiYt1Oy6FRHG6fA+Q6hpN6/UBzkegZzsjpAhCC2fjEQUPhCW1MT5tuFLM
 2OYlXf415NJLSTb83XzGlZnZjaF5yD0W3Xk+cIaYwpwz4DKbaxeDwJDSl2N2kXBNEwcqPHYFAmIW
 NbaX2eO4Kqq2j5CTMBF5CmcFcW+YcNQiy3BDBQx1Liiebh3s/R48dnMX3AzVIkMFegBM5GIzTBTS
 /JB/AVB9L7Ld9wQCnuHu/vJzFiNThZz4xi3gZAJZXZpNtYoZMWOPza8Lbo4x5/3/LzJIIuvymiyn
 j4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fx+Jw1pgeQ4=:D0VKvQE83yj6hlucNV3ytP
 lEOHz4WpPymLe7+Hpg56BICeU/8a5CB+EJ7TOzVImKqHq+nLP4BcVzzFynNAlUbuw7M+FiCXL
 G39E7XO1+3apzT+/7F5LJ/asHhKSAQgSTrYmWCV3bE64aZTmM9COoGmHeovmXxnyH1FldmlQM
 jkweOFPbR2osMbMD700ODlbhDFv3WbvIcD8p3SRSRL9qUpOl+vzrPnq/P92k2dgs/Znq+lj5x
 1+DbcRvLX9zuLb0PbZomlqBf5vkW/SP9m24cqB7fQIYG2F1CzaKk4KrW++xcbwPRRh/hHsyaQ
 YkTZ7/U+zWGzX5NqesQVhYyY3tueJ+B67Ts/hDOBVzyaYTqbB0QlwIHZoI4i+QWzP6j8iEuaC
 75MFF7CCPcxJuvdEI+wL0Ql0svnp5xlAx3TlPWaK6e0tKMgPkCouT+eVE7iZk2ZMfkbfsBP7j
 27a4b+Ft/IEnMuPgqk1ckXVwltUdy3rf7v2xWEOpEuVNnwOT8U0Ptc/xI5GJaaRgvuuOvOlRY
 9gZajBU/5H/hjs7H9rOC6g9jZHwPc1IVgc9CvvZ2Sq6a68N0A6OTvhz/xcOhCyAjnSKdkLTj7
 FFmNx7/bPDUBTGQu5cHup21HtP6y818kYS5vMdqjJtIyLyRIDvZwALAsc/myONlISlJJUlcRm
 54bfo93kBSNSI9F56nnhpiFGysNc6KGqPIcQGeGc28OWN5XQGatlw6IfdDxnd1zCkdASx2jRp
 1qkqmE3jI1sBpKVKp8WXeXmfw6lo7xTb4LIS0OO7JCZtV8cC2sBJ2i/r5FJkEakEf6/row2Zb
 Qds8BZb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_113712_404740_D5271A00 
X-CRM114-Status: UNSURE (   8.60  )
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

Hi Rob,

this (and the other bindings) part is marked as "not applicable", but without comment...it is not clear
to me why it is not yet applied or how to proceed.

https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220619082605.7935-2-linux@fw-web.de/

Do you expect driver-changes which will change binding too?

should i resend it unchanged in v5 (when 5.20-rc1 is out)? or do you try to move the data-lanes into
phy-provider which i have not got working?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
