Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D181CA0FE8
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 15:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78lwKjWV48A5XVaCPS0C6cm68KbV5AGnqnTMiIVM1/Q=; b=rnuHrSsVuOnXGM
	5spCBtvuGmsUSVf7eCfRkos+PtSyOJBTQZuZk4DLuBkywBPzG/S2/g9sDNH9ZIkRpX9CpXYdixBuo
	n3sExCOZn059LbdUoZH0Bn4MMV8JCLFx/NCRT9OVJeQDIOi0/7h5myUCkaLcFov8JKzJtzNiVPq5f
	hjZxrY8PRQwP5LX6V5mr9xFCLSTW6qB2twW7qQDoTMa1NM4lB1533B80mtMPeWxBrNAAfemOIUipC
	YhvTSyrvSOa8VUKEXYoG6Ij6UUDsvkmOlR8tid+MSQlSuRvO15AJxtOhYt0HxeR53KwwdICAhu2H3
	i2Jr8XT5BC4pxZJftp7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjeg-0000000AKYC-0ksQ;
	Sun, 31 Aug 2025 15:07:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjbw-0000000AKFL-1RpV;
	Sun, 31 Aug 2025 15:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FibP0s8DsDRdRncEUYqsAz/ECZHtws1JsEgePtJvE8Y=; b=cPpv6qlPTEnbNultnuF78/ObsZ
	AIKnE4RuwUdabNTi4jRz45mFbmRfArz4IW6ike0/r3Xu/W9X/375j7UZmiBWXZJEHEamxRpNynWxL
	Cu0TYqtV0mhrm9mlUo7vTTisqt1lSxfqkLnJTkQ4PnVlcAe8ypN9kPwjKkzlP7jsT0p1FVlu1Bqnd
	hCK/lGaOHH4G2Nr8TPya/dsBLmavC9S5wIc6z2Gp3FbEGMSPgL84l+Xmp0xs8gKWU2aqb8vHsRvrZ
	cs+bHCI/QbaLu0B5B0rzb76oUTyJ7+RfIOxSpDRWUq5RICFnN5wAbwQgffL/tvEZikO6JnGtfRstr
	6IsWn1Qw==;
Received: from i53875b56.versanet.de ([83.135.91.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usjbr-0006Xs-Pd; Sun, 31 Aug 2025 17:04:47 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v1 5/7] ARM: dts: rockchip: Add display subsystem for RK3368
Date: Sun, 31 Aug 2025 17:04:47 +0200
Message-ID: <3368190.aeNJFYEL58@diego>
In-Reply-To: <20250831104855.45883-6-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
 <20250831104855.45883-6-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_080452_386036_62EC1E08 
X-CRM114-Status: GOOD (  13.45  )
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

SGksCgpBbSBTb25udGFnLCAzMS4gQXVndXN0IDIwMjUsIDEyOjQ4OjUzIE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+IEFkZCB2b3AgYW5kIGRpc3BsYXkt
c3Vic3lzdGVtIG5vZGVzIHRvIFJLMzM2OCdzIGRldmljZSB0cmVlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgoKcGxlYXNlIHVzZSB0aGUgYXBw
cm9wcmlhdGUgcGF0Y2ggcHJlZml4LiBGb3IgYXJtNjQgdGhpcyBzaG91bGQgYmUKYXJtNjQ6IGR0
czogcm9ja2NoaXA6CgpUaGUgb25lIHlvdSdyZSB1c2luZyBpcyBmcm9tIHRoZSBhcm0zMiBzaWRl
LgoKQWxzbyBwbGVhc2Ugc29ydCB0aGluZ3MgYXBwcm9wcmlhdGVseSBib3RoIG5vZGUtcG9zaXRp
b24gYW5kIG9yZGVyIG9mCnByb3BlcnRpZXMgaW5zaWRlIG5vZGVzLCBzZWUKaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3Ry
ZWUvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2R0cy1jb2Rpbmctc3R5bGUucnN0
CgoKSGVpa28KCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LmR0
c2kgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzNjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LmR0c2kK
PiBpbmRleCA3MzYxOGRmN2EuLjBlNDdiZjU5YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM2OC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzNjguZHRzaQo+IEBAIC04NTgsNiArODU4LDMyIEBAIHZvcF9tbXU6IGlvbW11
QGZmOTMwMzAwIHsKPiAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJfTsKPiAgCj4gKwl2b3A6
IHZvcEBmZjkzMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzNjgtdm9wIjsK
PiArCQlyZWcgPSA8MHgwIDB4ZmY5MzAwMDAgMHgwIDB4MmZjPiwgPDB4MCAweGZmOTMxMDAwIDB4
MCAweDQwMD47Cj4gKwkJcmVnLW5hbWVzID0gInJlZ3MiLCAiZ2FtbWFfbHV0IjsKPiArCQlpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgMTUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwkJY2xvY2tzID0g
PCZjcnUgQUNMS19WT1A+LCA8JmNydSBEQ0xLX1ZPUD4sIDwmY3J1IEhDTEtfVk9QPjsKPiArCQlj
bG9jay1uYW1lcyA9ICJhY2xrX3ZvcCIsICJkY2xrX3ZvcCIsICJoY2xrX3ZvcCI7Cj4gKwkJYXNz
aWduZWQtY2xvY2tzID0gPCZjcnUgQUNMS19WT1A+LCA8JmNydSBIQ0xLX1ZPUD47Cj4gKwkJYXNz
aWduZWQtY2xvY2stcmF0ZXMgPSA8NDAwMDAwMDAwPiwgPDIwMDAwMDAwMD47Cj4gKwkJcmVzZXRz
ID0gPCZjcnUgU1JTVF9MQ0RDMF9BWEk+LCA8JmNydSBTUlNUX0xDREMwX0FIQj4sIDwmY3J1IFNS
U1RfTENEQzBfRENMSz47Cj4gKwkJcmVzZXQtbmFtZXMgPSAiYXhpIiwgImFoYiIsICJkY2xrIjsK
PiArCQlpb21tdXMgPSA8JnZvcF9tbXU+Owo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwo+
ICsJCXZvcF9vdXQ6IHBvcnQgewo+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCQkJI3Np
emUtY2VsbHMgPSA8MD47Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICsJZGlzcGxheV9zdWJzeXN0ZW06
IGRpc3BsYXktc3Vic3lzdGVtIHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLGRpc3BsYXkt
c3Vic3lzdGVtIjsKPiArCQlwb3J0cyA9IDwmdm9wX291dD47Cj4gKwkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKPiArCX07Cj4gKwo+ICAJaGV2Y19tbXU6IGlvbW11QGZmOWEwNDQwIHsKPiAgCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLGlvbW11IjsKPiAgCQlyZWcgPSA8MHgwIDB4ZmY5YTA0NDAgMHgw
IDB4NDA+LAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
