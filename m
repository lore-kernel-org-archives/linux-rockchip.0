Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06233C88CB9
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 13:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTx6RWGDBaL5GYxNH6sJXUTgj0Opkl9dn2SqjKfH0yw=; b=q+H8cpwbAUHCYx
	P22o1ZT1vLA03xMRiujST7yQm0xiuweHx/ssuBecElJssQugTpcUhlqirPTXfmDvGxTgqPxhtuP79
	tj/FayvHMF8R22PDFybhgYl9oSn4B0oxaDU2Qe6oMWmQ8Dbq36btxWiwIaQIY8l7q88iYm8KIp/CQ
	dvxe2EkzxeHejGN6TbYi00Eu+hRzSznVhBT9gVqI0G2qcp0gpw7SAVc0RQa97wUphSpHvCe69Bu3r
	9lAQAV674GISZfBP+Z5pZeCnd8pGBTjJEUHJX7cTBwrKQfMdkOJjSZOBTouR0wuPe3YA7yfaGB7yF
	17hyL9NtUMPy1Nn45Naw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSKJ-00000007mEY-2F9p;
	Mon, 11 Aug 2025 13:12:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSBo-00000007kxn-2NTc;
	Mon, 11 Aug 2025 13:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=zqifTpDaQhWEUMpUlGKro4a6sMf2oQed5RETrkmaP4A=; b=jB7ocoBy0jyhkKMHmY6LE+HubP
	c4Mr/18h967h9VLLwinMbOjQI4AVp+uWE3NZ3O/7k4HjyrqN050E+B3EXHuRkACnGbqvtr1goE0VR
	LqGupZiZbYisc6eOX21769LVJR25mbO93JBN5rgDOi/r1AddDoIDaBhtXwk9nfaeR8+fGFmDnZkkb
	iqxW0Opt8IQUCQtx4IdlPlyOlbsb1Fbs+8pivjENBioDb7ou2lQDMHWKBVq7poKkdVDRL2wuIPLTw
	pGzD+4n2F2cx6HNx+IpxM4UcG9sd1uG584j+G3t5cGrFp7ON3y2rJhVySpEfaCBEG7fly0we3ofo6
	NLvsSDTw==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulSBb-0001JS-NF; Mon, 11 Aug 2025 15:03:35 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 naoki@radxa.com, robh@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: disable display subsystem for Radxa
 E52C
Date: Mon, 11 Aug 2025 15:03:34 +0200
Message-ID: <2784232.uZKlY2gecq@diego>
In-Reply-To: <20250811130108.462673-1-amadeus@jmu.edu.cn>
References: <3125650.687JKscXgg@diego> <20250811130108.462673-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_060348_627563_467236B6 
X-CRM114-Status: GOOD (  15.36  )
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

SGksCgpBbSBNb250YWcsIDExLiBBdWd1c3QgMjAyNSwgMTU6MDE6MDggTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+ID4gV2hhdCBhY3R1YWwgcHJvYmxl
bSBkb2VzIHRoaXMgZml4Pwo+ID4KPiA+IEZvciBleGFtcGxlIHdlIGFsc28gZW5hYmxlIG9uLXNv
YyBpb21tdXMgYWxsIHRoZSB0aW1lLCBiZWNhdXNlIHRoZXkncmUKPiA+IG9uIHRoZSBzb2MgYW5k
IGRvbid0IG5lZWQgYm9hcmQtbGV2ZWwgcHJvcGVydGllcy4KPiA+Cj4gPiBUaGUgImRpc3BsYXkt
c3Vic3lzdGVtIiB3aXRob3V0IHVzZXJzIGxvb2tzIG1vc3RseSBpbiB0aGUgc2FtZSBzcG90Lgo+
ID4KPiA+IFNvIEkgZG8gZXhwZWN0IGEgZGVzY3JpcHRpb24gb2Ygd2hhdCBwcm9ibGVtIGdldHMg
Zml4ZWQgdGhhdCB0aGlzIG5lZWRzCj4gPiB0byBiZSBkaXNhYmxlZC4KPiAKPiBEaXNhYmxlIHRo
ZSBkaXNwbGF5LXN1YnN5c3RlbSB0byByZW1vdmUgdGhpcyBlcnJvciBsb2c6Cj4gWyAgICAxLjM4
MjQ0MF0gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBbZHJtOjB4ZmZmZmEzOTg1ODcz
NTU1Y10gKkVSUk9SKiBObyBhdmFpbGFibGUgdm9wIGZvdW5kIGZvciBkaXNwbGF5LXN1YnN5c3Rl
bS4KCm9rLCB0aGF0IG1ha2VzIHNlbnNlIHRoZW4KCj4gSSB3aWxsIGltcHJvdmUgdGhlIGNvbW1p
dCBtZXNzYWdlIGluIHYyLiBEbyBJIG5lZWQgdG8gcmVtb3ZlIHRoZSBGaXhlcyB0YWc/CgpOb3Bl
LCBwbGVhc2Uga2VlcCB0aGUgZml4ZXMgdGFnCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
