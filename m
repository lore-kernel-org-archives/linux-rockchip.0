Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57BF2CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4IBM/wERA1hk0YeKM1aLkd6CnJ4qadzOcKDqYQA3l1Y=; b=O3mpua4wPgps1j
	2odXw3uc6tfqgDGCl9NOwrRrbGdPy84CqRaAUS39Md9qmwEMvayWeNdzPblMDxiOEKm8sAqUo5E8w
	EO5UmkS4WYCl0FPqr0xfj71dl+14JkFuMHVajTuhgyaD7G5daMDtVw6gzF3pfJnatouVVMmc8EFBj
	vDSrgIspbwLquQBGLJDG8LSzlYaIxheOgWgUgW6OjUZRZOskWN0e/3JTfnz0IFE7rQVwmwmPo87Km
	DjuvvREuOb9eddWY/kV/P0cycPpEapqxBa8tz+oRjWMCWx3qQbmU2XmufCW3HK2e4SlvLnYB3486J
	u2+Pi/SQ0t0BEI0A2CwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsI49-008emG-2g;
	Mon, 16 Oct 2023 07:31:05 +0000
Received: from mail.reismin.com ([217.61.105.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsI45-008eks-1g
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 07:31:05 +0000
Received: by mail.reismin.com (Postfix, from userid 1002)
	id 5434082786; Mon, 16 Oct 2023 09:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=reismin.com; s=mail;
	t=1697441451; bh=xAcLlILL50NG5iUG5HnziOXhpPS/RymW7kJy8FCy25o=;
	h=Date:From:To:Subject:From;
	b=ce2WBBrfK1BC7pWrb4SbuwE3uide+/Ueg2KmF5Je3PU4HX1Vfz1gQFCZl4arwf0yc
	 aJ0fX0/cPj0EPU7TKyNoLN/mozDh/ncnIZMsQGbvpt/EFznBELC/nC7jWw1EeKaEr+
	 uxDFFg7HPgd+ixwskj9G+35MTSHPnS8u0hxaH8pAD7S5PrSE3Uzb/8MzqO3hYpp3ji
	 smxn1y9u8/OVQKMTZ+838VQplSPsHdLwmvxWzVnCP057f+1DIdkBIPZOb99/EoN/fx
	 w/L+XoM75f+FiMs3JppOgEpavxuZQq0100iA7lj2FAPXutwl957UVNfptQ6zpUE17Y
	 fylNM3dpomV0A==
Received: by mail.reismin.com for <linux-rockchip@lists.infradead.org>; Mon, 16 Oct 2023 07:30:44 GMT
Message-ID: <20231016084500-0.1.3o.h0vr.0.4koo6exs4i@reismin.com>
Date: Mon, 16 Oct 2023 07:30:44 GMT
From: =?UTF-8?Q?"Andrzej_Pola=C5=84ski"?= <andrzej.polanski@reismin.com>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.reismin.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_003102_299602_8F937D5E 
X-CRM114-Status: UNSURE (   0.36  )
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8KCgpQb3pkcmF3aWFtCkFuZHJ6
ZWogUG9sYcWEc2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
