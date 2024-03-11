Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 689A6C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Mar 2024 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bg+YJ2nCK8hwSDich8mTZo/hki3BU9K32e0sKR7ei5k=; b=FEzyc79sOZ3BBD
	kz5aM3qMVCCqyfLW8BAGYfMMWK5RnxuXHQkScdg/cZDOaptXQHgRFdVhqJ3XBBu1aau36B12CBs0C
	stpIq6sHwbAm6a8tKoJInJPMgIlYbZERaIya9Ow2JTnbQHfhqzyWesKvuRxSQbBxTVTHJirqUafzG
	8Q8TdNqyuJFa/PGx/spYSadOhLo9gIp7ttQRQSL0JDhqohrPVzy6rQ3LbdrS5X0Wa35I0GqJsheAm
	QViSgK6ODiXDx6dKKw94lKC7uedfsim0jh/x/0SjsejWXDAxXCXXcZ8jEl873pu3nT+eLmCW46JTc
	zC/5JQaftNMXFWYSurCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbqz-00000000odl-3vRZ;
	Mon, 11 Mar 2024 09:21:53 +0000
Received: from mail.buildbrigade.pl ([135.125.238.46])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbqt-00000000oWV-0FhP
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Mar 2024 09:21:49 +0000
Received: by mail.BuildBrigade.pl (Postfix, from userid 1002)
	id 471CDA2C14; Mon, 11 Mar 2024 09:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=BuildBrigade.pl;
	s=mail; t=1710148546;
	bh=EYN951LA1I6x2LqQG9SRvdSsS/DbVhjOvb+nDwRFhwc=;
	h=Date:From:To:Subject:From;
	b=TGX0KgywxOc+KH/E4h2SK/gYAoSNwSDbxaSUHkuiHDbAWdy5nV1GbaMrTpRPtcjRd
	 MbxhAJVbqWVg96EhaSjyiTR5FCTVzMJy30CtndIowoh8pu8XYQPfPwggubMqgp9CMT
	 ANenxdy5pEXvEM25Q0CbrlXpK7wUskzINlr86wkQ6DEiwvmyFR8FoeNlPRaQrifW5a
	 5TB4AM+ySrSQYBs2GBdkbfRI4upMk2yHf5moni7fFS8v9qNurYyNi3c7bMAtjd01bK
	 NGRAa6k9Oc1yRwV5iTYc+m+7usnGjmpr2KDMXeJ/f4Lyl1YLIyNgD4Ecc/6xvxi9YA
	 LhXZXwnychO3g==
Received: by mail.BuildBrigade.pl for <linux-rockchip@lists.infradead.org>; Mon, 11 Mar 2024 09:15:20 GMT
Message-ID: <20240311074500-0.1.c1.1gyee.0.kqzh4ah4hk@BuildBrigade.pl>
Date: Mon, 11 Mar 2024 09:15:20 GMT
From: "Tomasz Mrozowski" <tomasz.mrozowski@buildbrigade.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Niskokosztowa_modernizacja_o=C5=9Bwietlenia?=
X-Mailer: mail.BuildBrigade.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_022147_341957_E2B9E21B 
X-CRM114-Status: UNSURE (   1.24  )
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

V2l0YW0sIAoKamVzdGXFm215IHBvbHNraW0gcHJvZHVjZW50ZW0gb3ByYXcgb8Wbd2lldGxlbmlv
d3ljaCwgZG9zdG9zb3dhbnljaCBkbyBwb3RyemViIHNla3RvcmEgcHJ6ZW15c8WCb3dlZ28uCgpO
YXN6eW0gY2VsZW0gamVzdCBwb21hZ2FuaWUgZmlybW9tIHByemVteXPFgm93eW0gdyBvc3pjesSZ
ZHphbml1IGVuZXJnaWkgaSB6d2nEmWtzemFuaXUgZWZla3R5d25vxZtjaSBwb3ByemV6IG1vZGVy
bml6YWNqxJkgb8Wbd2lldGxlbmlhLgoKUHJ6ZXByb3dhZHppbXkgbmllem9ib3dpxIV6dWrEhWN5
IGkgYmV6cMWCYXRueSBhdWR5dCBvxZt3aWV0bGVuaWEgdyBQYW5pL1BhbmEgZmlybWllLCBrdMOz
cnkgcG9tb8W8ZSB6aWRlbnR5Zmlrb3dhxIcgcG90ZW5jamFsbmUgb3N6Y3rEmWRub8WbY2ksIGph
a2llIG1vxbxuYSBvc2nEhWduxIXEhyBwbyB6YXN0b3Nvd2FuaXUgbmFzenljaCBvcHJhdy4gCgpE
emlhxYJhbXkga29tcGxla3Nvd28sIHBvY3rEhXdzenkgb2Qga29uc3VsdGFjamkgbG9rYWxueWNo
LCBwb3ByemV6IHByb2pla3Rvd2FuaWUgb3B0eW1hbG5lZ28gbmF0xJnFvGVuaWEgxZt3aWF0xYJh
LCBhxbwgcG8gcHJvZmVzam9uYWxueSBtb250YcW8IG5hc3p5Y2ggcHJvZHVrdMOzdy4gCgpPcHJh
Y293YWxpxZtteSBpbm5vd2FjeWpueSBtb2RlbCBmaW5hbnNvd2FuaWEgaW53ZXN0eWNqaS4KClBy
b3N6xJkgbyBvZHBvd2llZMW6LCBqZcWbbGkgamVzemN6ZSBuaWUgd3ltaWVuaWxpIFBhxYRzdHdv
IG/Fm3dpZXRsZW5pYSBuYSBMRUQgaSBqZXN0ZcWbY2llIHphaW50ZXJlc293YW5pIG5hc3rEhSBw
cm9wb3p5Y2rEhS4KCgpQb3pkcmF3aWFtClRvbWFzeiBNcm96b3dza2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
