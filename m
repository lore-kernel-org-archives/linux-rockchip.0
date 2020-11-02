Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77619C388F2
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 14:55:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5F172227F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 14:55:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IeqJCqJE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5F172227F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7gXjzE4mJeIgNbzouOztXx9hyg4c7bgJXMPKH5WMdHs=; b=IeqJCqJEOf21UIW53FYW+OGsb
	bpw4eR97qWPX/yLElzvGbOhWPOnXmwXo+1UboyMrsCozyfu63/Y4oTjcqh/vs+0Wf1VaBjYYbOQXW
	UHo/Y90QBF3kMJPM6SdK3JSIyC6qMXE9cPPwKMyef1O+ARfOetvxorNIVX1rveyqvAPaZmEJvOnve
	tc8+Lxq94Ws3Zomzts4j17IHX1TaVJxj39MTcbGv3ITCAeMD6s6WOuikNFp29TFqI5boA1OF1Ba7O
	MjS5CETI5cC/ntfoEiukcNqucaJ/PtMwO9cOXufTTyB8k9SVwZ+x28xtdGCm+C1F4G48hmuAUJR+9
	yhww5xo1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZbFT-0005qD-Tb; Mon, 02 Nov 2020 14:55:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZbFP-0005pA-7K; Mon, 02 Nov 2020 14:55:52 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZbFK-0006vx-R7; Mon, 02 Nov 2020 15:55:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Aditya Prayoga <aditya@kobol.io>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v4 0/2] arm64: Add basic support for Kobol's Helios64
Date: Mon,  2 Nov 2020 15:55:45 +0100
Message-Id: <160432890189.1244997.12717967728600775929.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014200030.845759-1-uwe@kleine-koenig.org>
References: <20201014200030.845759-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_095551_288435_D1A7FC4E 
X-CRM114-Status: GOOD (  14.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAxNCBPY3QgMjAyMCAyMjowMDoyOCArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gaW4gdjMgSm9oYW4gc3RpbGwgZm91bmQgc29tZSBpbmNvbnNpc3RlbmNpZXMgaW4gaG93
IEkgc29ydGVkIChvciBkaWRuJ3QKPiBzb3J0KSB0aGUgZGV2aWNlIHRyZWUgcHJvcGVydGllcy4g
VGhlIHJ1bGVzIEkgYXBwbGllZCBub3cgYXJlOgo+IAo+IAlhdCB0aGUgYmVnaW5uaW5nIG9mIGEg
bm9kZTogY29tcGF0aWJsZSwgcmVnIGFuZCBpbnRlcnJ1cHQgc3R1ZmYKPiAJc3RhdHVzIGFuZCAj
KiBhdCB0aGUgZW5kCj4gCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgYmVmb3JlIGkyYy1zY2wtZmFs
bGluZy10aW1lLW5zCj4gCXJlZ3VsYXRvci1uYW1lIGZpcnN0IGFtb25nIHJlZ3VsYXRvci0qCj4g
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0IGJlZm9yZSByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdAo+
IAlwaW5jdHJsLW5hbWVzIGJlZm9yZSBwaW5jdHJsLTAKPiAJdHhfZGVsYXkgZ3JvdXBlZCB3aXRo
IChhbmQgYWZ0ZXIpIHJ4X2RlbGF5Cj4gCXZjYzEyKiBhZnRlciB2Y2M1Kgo+IAlvdGhlcndpc2Ug
YWxwaGFiZXRpY2FsbHkKPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMl0gZHQtYmlu
ZGluZ3M6IHZlbmRvci1wcmVmaXhlczogQWRkIGtvYm9sIHByZWZpeAogICAgICBjb21taXQ6IGZh
NjdmMjgxN2ZmMmM5YmIwNzQ3MmQzMGU1OGQ5MDQ5MjJmMWE1MzgKWzIvMl0gYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEFkZCBiYXNpYyBzdXBwb3J0IGZvciBLb2JvbCdzIEhlbGlvczY0CiAgICAgIGNv
bW1pdDogMDllMDA2Y2ZiNDNlOGVjMzhhZmUyODI3OGIyMTBkYWI3MmU2Y2FjOAoKRml4ZWQgc3Bh
Y2VzIHdpdGggdGFicyBpbiB0aGUgZGVsZXRlZCBvcHAgYXJlYSBhbmQKaW5zZXJ0ZWQgYSBibGFu
ayBiZXR3ZWVuIHRoZSB0d28gY2x1c3RlciBibG9ja3MuCgoKQmVzdCByZWdhcmRzLAotLSAKSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
