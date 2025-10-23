Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C639CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 08:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROXCepho+jmo5UuaMSQrXwKuM0EaWEVV6o7sxpTm+Fc=; b=POhqyJ6bXR3hTE
	IelKyPFNExSAcQlJjdOuYDjJsxYBtbNvZm0kUYpFM+WVp28iLb5GW0x42e3R9wvaUyIv5+/ZDV7sI
	FGY1IIC4xIl2MAGoXHttt4CnFHFa3O95kCmFHh4gpxQSI+zQYtQIr9vkIJJuiLIXHII9E5krJlkMl
	ZyFILuFC4ki0dKJQlczMmKz1z681SnvERs3vzNDYdtmUhrcFWQSjMid/TOY7brF4BVdAvVFXfU7+5
	nreCohmWVpoGcClav7Xp0MZIBUgzakQx3xLByFoTNWvoi1wDA+QrWkVBfa4BgWrhrScZDvfqcX6pr
	MdPa9B7R0XJ7AC7JfCwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBqHX-00000005Se8-3wAT;
	Thu, 23 Oct 2025 08:02:48 +0000
Received: from mail.bizial.pl ([141.94.21.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBqHV-00000005Sd1-24X2
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 08:02:46 +0000
Received: by mail.bizial.pl (Postfix, from userid 1002)
	id 53679252A2; Thu, 23 Oct 2025 10:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizial.pl; s=mail;
	t=1761206499; bh=Wi1EwQo/dG68GeDrjYwpMT11dLZoRMkzwMdoXACjbmg=;
	h=Date:From:To:Subject:From;
	b=HY6l3dZM9OPrx6OwB1es6AFxCT9PA3I1mP2ri1ZGggf4Sg1CqdZ0I/XULbE6p1VGx
	 PfNfu0IJBkSnk8HM5psNfaFsAkBQ63daSpkncsFH7XbULBydoRcB+ZNyHIHJc4d7Mi
	 ThOxv9WvK9upcvZoiie7UQQI3OE8hhfjfrpKppUDg59+IIa/5PoEfKdjvxnVFNWX24
	 seZzx5wU5zsNtNtin8mYRhfcV/r4UGRY8sgbc870hypuVAZOicOwPuS6KcvANCvpbf
	 SmIWo/Wagy0X4AZi+BZThTGdPs1JpL37T6xHkbrCnf3GcaHU3rqzqrC7BXC1EAqZC5
	 tvoVgJJfjCuhA==
Received: by mail.bizial.pl for <linux-rockchip@lists.infradead.org>; Thu, 23 Oct 2025 08:01:13 GMT
Message-ID: <20251023084500-0.1.bk.2bu1x.0.0rafdozgep@bizial.pl>
Date: Thu, 23 Oct 2025 08:01:13 GMT
From: "Kamil Lasek" <kamil.lasek@bizial.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Fotowoltaika dla firm
X-Mailer: mail.bizial.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_010245_792262_854D06DC 
X-CRM114-Status: UNSURE (   0.09  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKcG9tYWdhbXkgbWlrcm8sIG1hxYJ5bSBpIMWbcmVkbmltIHByemVkc2nE
mWJpb3JzdHdvbSBvYm5pxbx5xIcga29zenR5IGVuZXJnaWkgZWxla3RyeWN6bmVqIGR6acSZa2kg
bW9udGHFvG93aSBpbnN0YWxhY2ppIGZvdG93b2x0YWljem5lai4gCgpBa3R1YWxuaWUgcHJvcG9u
dWplbXkgYmV6a29ua3VyZW5jeWpuZSB3YXJ1bmtpIHdzcMOzxYJwcmFjeSwgb2QgcGxhbnUgcG9w
cnpleiByZWFsaXphY2rEmSBhxbwgcG8gc2Vyd2lzLgoKUHJvc3rEmSBvIGluZm9ybWFjasSZIGN6
eSBtb8W8ZW15IHByemVkc3Rhd2nEhyBwcm9wb3p5Y2plIGRsYSBQYcWEc3R3YSBmaXJteT8KCgpQ
b3pkcmF3aWFtCkthbWlsIExhc2VrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
