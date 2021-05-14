Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DDC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:20:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D598D6144C
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:20:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D598D6144C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QFRsHhTA06/vtsX5DvGyP0MCiWVJwNsS/qUnnkoZnoI=; b=RqZOqdZn6rlqPmvups0PV7RWp
	243tyrHIEotCJBi2U2ImzKV108epjKDlUOUrNy53k4MoxS+1PrFWChS7UDDEEAS8pO6eWrnzLGCOK
	1dp8+8mrV6ur/DfNXB02btYH4zqEgw2Sy+yvGk4Gah4iPozkLdk7mUv7FdSg9WZVdYAInHiaTygii
	49E7hsUbFdZAtshFElionRqvDk3lCNyVyDIkYnz/t3bUC9IlycG/DXm+PETtzl1b3jm8xYl0HeTwd
	QBnQMUy6LSXYQQwZKBWblqrLeAcPJy3xEAqTDxkMQaAVnd/iaL6+kUCNx5oHpCdhajNf4GqEvtDFT
	ieTjRgBeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWoG-0080eM-ET; Fri, 14 May 2021 12:20:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWo3-0080bs-50
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 12:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=gIerlfRRal5wzJ70HE3+FraRWXTCN0xY8r2lj9i7f9A=; b=Poghj3L0Mk5NmmEM/HqjyQV8uL
 HG1a/aEKscPfVYo7v55ECjbnLSTJGF15HCdjYZwv6Nc91n5cgvAKfF2GPa9SZVKTrCqq21wQpRGzH
 3MrqzpqFmX60Frp+OFYHYVT+TZTshGXPeQxxDWXyaOmbmxPQopeNUJ/bNUEiQ7iB9J9aEMQhNycvk
 TyQw3DqA+qJ6RQ+IJWOX/DZ9AXB6tt+05PP6vnML3Al7hawMRmW9aRwJ5/S/KDl0RxPz4hE/fkQgY
 qIcb99cQplSAxSInbG1b95X18gTbrnjo/76w4f1vqNHdTK5HjqKnAylo7gk4chs43skPvtMhTDV9J
 KKIi7yow==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWo0-00By3R-S7
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 12:20:37 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhWny-0002bC-8u; Fri, 14 May 2021 14:20:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for PCIe
Date: Fri, 14 May 2021 14:20:31 +0200
Message-Id: <162099477649.1967349.13845476754836490046.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510090932.970447-1-uwe@kleine-koenig.org>
References: <20210510090932.970447-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_052036_932759_8251148B 
X-CRM114-Status: GOOD (  10.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gTW9uLCAxMCBNYXkgMjAyMSAxMTowOTozMiArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gVGhpcyBpcyBlbm91Z2ggdG8gbWFrZSB0aGUgU0FUQSBjb250cm9sbGVyIHZpc2libGU6
Cj4gCj4gIyBsc3BjaQo+IDAwOjAwLjAgUENJIGJyaWRnZTogRnV6aG91IFJvY2tjaGlwIEVsZWN0
cm9uaWNzIENvLiwgTHRkIFJLMzM5OSBQQ0kgRXhwcmVzcyBSb290IFBvcnQKPiAwMTowMC4wIFNB
VEEgY29udHJvbGxlcjogSk1pY3JvbiBUZWNobm9sb2d5IENvcnAuIEpNQjU4eCBBSENJIFNBVEEg
Y29udHJvbGxlcgoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGhlbGlvczY0OiBBZGQgc3VwcG9ydCBmb3IgUENJZQogICAgICBjb21taXQ6IDVhNjVhZGZhMmFk
MTU0MmY4NTZmYzdkZTM5OTlkNTFmM2EzNWQyZTIKCkFkYXB0ZWQgdG8gbmV3IGZhbiBvcmRlcmlu
ZyBmcm9tIHByZXZpb3VzIHBhdGNoLgoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
