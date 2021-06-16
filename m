Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617A5C48BE6
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 12:49:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CFAE610A3
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 12:49:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CFAE610A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9p1r60g2EnEBCJbS2/KKoFb6N2gYTxRHgOcxRcZ++8=; b=NP+gALmaWBQvh6
	bsfkXl8PI6GYvt4HIs+cFtYZsCX7ClPqjg1OlXejiGn4D8xX4D0MXJh3Q9sqSnk/DAIs3dKEDEXdw
	BpIeKbvJpsYI12zaI33uyVbCwNNa+elbFT9WCP6zW0SbPLD8GNqq0JkiUxm0CR8Wk5vx0C9hD/3nK
	mglM7viXvrvrWxw7EKsAmKdmCJocD23cJQcuMqSijbh/gTDx+geC/r7+Scv6S/6oJF2Ddf1yDcKuN
	LNcdC4XSdsbL3Qop+ykMdqRejssQUMrVIQNpFZDkEiktgDIcEX0A/Ha9qIzwatogyAMAF5nqyGm9G
	UrJ9duQFu3pLOMBiDqjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltUyf-006Ix3-AT; Wed, 16 Jun 2021 12:49:05 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltUyb-006Iw8-Hv; Wed, 16 Jun 2021 12:49:04 +0000
Received: by mail-pl1-x629.google.com with SMTP id 69so1062211plc.5;
 Wed, 16 Jun 2021 05:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=bPog0RE85xcT70HcJ3zdDfpWRbRDYp7EE1bqB/NOW4w=;
 b=IoLYdCWDuxVy2duzo7zynPackCGDlyDgRI4iDjO6Cemgz1TdwaE2aY+ZivXzTsseNa
 W+XgTj/KD1clC7NM5oxdvDUsquYCWJZfJ2Q3UIHeGj+3dmmjRKyJwm4lhROeriDAhyxs
 +e1beUQpsLF2hQTMfNjAhQtPewD7jHQ7GZlOPjxXTqU1C2rjyzGtey2UpYdP4liGO4/8
 0RyLU5XQ/aP8X6U0up23valVFErA9JUwSfSIv+6zCgaC7CXfuUFN7O0JIpuihbeia5Bw
 XVzFJ4/3dcH+/Hw1f0GbcRGdXqkxv1J8A11JZOJv6OOiD84hUZCBvVxylaqNR3Mthohi
 Qe4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=bPog0RE85xcT70HcJ3zdDfpWRbRDYp7EE1bqB/NOW4w=;
 b=Y5XXQb9HtbVNJAN58f0xY+ectZRS+9KgSq6O9ZnvJe8Upar/mEJh9CmyLuvy4wljhB
 1nzkFYsMsD1f33uLMRA0JMlaJfzvVR0Y2jPmN/slp9Upx2ePefC0m+gfYhJmse5aBpVw
 areGh12wo2zMa/cEAF/Q1m9JinRtUopq0cC/ILyTsBrebNcALxUMle+lRzWd1Y2Eme10
 FxVQhW5Fi+Bypk9xw6LpfC2pXwWsn/3+VAjlOcrNIg4hbJ/BCHUrsW/rcJvELm21lQT6
 dggttcKZOlqOu1zOR0MfyX8aghuIwXkPY4XYh+IOwTxQKo84IS40Ne1kw+E1mrsV7wPn
 poXg==
X-Gm-Message-State: AOAM5335OTZjrdL/qAeNEdKwLKTV1R18nguphRoGXudT5oDu7GGc1Vsc
 IcixQkL+oSZsWX7chy4lixA=
X-Google-Smtp-Source: ABdhPJzdXESQ4680mekLsqXH9ZnN3Akl6foU+/ByObUepapyrbdiGCVQt1LepR/Xt7ta2JfYgK3Usw==
X-Received: by 2002:a17:90a:ce18:: with SMTP id
 f24mr10642746pju.225.1623847739897; 
 Wed, 16 Jun 2021 05:48:59 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id t1sm2143043pfe.61.2021.06.16.05.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 05:48:58 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: helgaas@kernel.org,  robh+dt@kernel.org,  maz@kernel.org,
 leobras.c@gmail.com,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org,  wqu@suse.com,  robin.murphy@arm.com,
 pgwipeout@gmail.com,  ardb@kernel.org,  briannorris@chromium.org,
 shawn.lin@rock-chips.com,  Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v4] PCI: of: Clear 64-bit flag for non-prefetchable
 memory below 4GB
References: <20210614230457.752811-1-punitagrawal@gmail.com>
 <888ca9e9-a1c0-3992-7c01-bbb7400e8dc0@arm.com>
Date: Wed, 16 Jun 2021 21:48:56 +0900
In-Reply-To: <888ca9e9-a1c0-3992-7c01-bbb7400e8dc0@arm.com> (Alexandru
 Elisei's message of "Tue, 15 Jun 2021 09:46:12 +0100")
Message-ID: <87eed2t1on.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_054901_660748_B17B1DB6 
X-CRM114-Status: GOOD (  20.00  )
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

SGkgQWxleCwKCkFsZXhhbmRydSBFbGlzZWkgPGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4gd3Jp
dGVzOgoKPiBIaSBQdW5pdCwKPgo+IFRoYW5rIHlvdSBmb3Igd29ya2luZyBvbiB0aGlzIQo+Cj4g
T24gNi8xNS8yMSAxMjowNCBBTSwgUHVuaXQgQWdyYXdhbCB3cm90ZToKPj4gQWxleGFuZHJ1IGFu
ZCBRdSByZXBvcnRlZCB0aGlzIHJlc291cmNlIGFsbG9jYXRpb24gZmFpbHVyZSBvbgo+PiBST0NL
UHJvNjQgdjIgYW5kIFJPQ0sgUGkgNEIsIGJvdGggYmFzZWQgb24gdGhlIFJLMzM5OToKPj4KPj4g
ICBwY2lfYnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFttZW0gMHhmYTAwMDAwMC0weGZi
ZGZmZmZmIDY0Yml0XQo+PiAgIHBjaSAwMDAwOjAwOjAwLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAw
MV0KPj4gICBwY2kgMDAwMDowMDowMC4wOiBCQVIgMTQ6IG5vIHNwYWNlIGZvciBbbWVtIHNpemUg
MHgwMDEwMDAwMF0KPj4gICBwY2kgMDAwMDowMTowMC4wOiByZWcgMHgxMDogW21lbSAweDAwMDAw
MDAwLTB4MDAwMDNmZmYgNjRiaXRdCj4+Cj4+ICJCQVIgMTQiIGlzIHRoZSBQQ0kgYnJpZGdlJ3Mg
MzItYml0IG5vbi1wcmVmZXRjaGFibGUgd2luZG93LCBhbmQgb3VyCj4+IFBDSSBhbGxvY2F0aW9u
IGNvZGUgaXNuJ3Qgc21hcnQgZW5vdWdoIHRvIGFsbG9jYXRlIGl0IGluIGEgaG9zdAo+PiBicmlk
Z2Ugd2luZG93IG1hcmtlZCBhcyA2NC1iaXQsIGV2ZW4gdGhvdWdoIHRoaXMgc2hvdWxkIHdvcmsg
ZmluZS4KPj4KPj4gQSBEVCBob3N0IGJyaWRnZSBkZXNjcmlwdGlvbiBpbmNsdWRlcyB0aGUgd2lu
ZG93cyBmcm9tIHRoZSBDUFUKPj4gYWRkcmVzcyBzcGFjZSB0byB0aGUgUENJIGJ1cyBzcGFjZS4g
IE9uIGEgZmV3IGFyY2hpdGVjdHVyZXMKPj4gKG1pY3JvYmxhemUsIHBvd2VycGMsIHNwYXJjKSwg
dGhlIERUIG1heSBhbHNvIGRlc2NyaWJlIFBDSSBkZXZpY2VzCj4+IHRoZW1zZWx2ZXMsIGluY2x1
ZGluZyB0aGVpciBCQVJzLgo+Pgo+PiBCZWZvcmUgOWQ1N2U2MWJmNzIzICgib2YvcGNpOiBBZGQg
SU9SRVNPVVJDRV9NRU1fNjQgdG8gcmVzb3VyY2UKPj4gZmxhZ3MgZm9yIDY0LWJpdCBtZW1vcnkg
YWRkcmVzc2VzIiksIG9mX2J1c19wY2lfZ2V0X2ZsYWdzKCkgaWdub3JlZAo+PiB0aGUgZmFjdCB0
aGF0IHNvbWUgRFQgYWRkcmVzc2VzIGRlc2NyaWJlZCA2NC1iaXQgd2luZG93cyBhbmQgQkFScy4K
Pj4gVGhhdCB3YXMgYSBwcm9ibGVtIGJlY2F1c2UgdGhlIHZpcnRpbyB2aXJ0dWFsIE5JQyBoYXMg
YSAzMi1iaXQgQkFSCj4+IGFuZCBhIDY0LWJpdCBCQVIsIGFuZCB0aGUgZHJpdmVyIGNvdWxkbid0
IGRpc3Rpbmd1aXNoIHRoZW0uCj4+Cj4+IDlkNTdlNjFiZjcyMyBzZXQgSU9SRVNPVVJDRV9NRU1f
NjQgZm9yIHRob3NlIDY0LWJpdCBEVCByYW5nZXMsIHdoaWNoCj4+IGZpeGVkIHRoZSB2aXJ0aW8g
ZHJpdmVyLiAgQnV0IGl0IGFsc28gc2V0IElPUkVTT1VSQ0VfTUVNXzY0IGZvciBob3N0Cj4+IGJy
aWRnZSB3aW5kb3dzLCB3aGljaCBleHBvc2VkIHRoZSBmYWN0IHRoYXQgdGhlIFBDSSBhbGxvY2F0
b3IgaXNuJ3QKPj4gc21hcnQgZW5vdWdoIHRvIHB1dCAzMi1iaXQgcmVzb3VyY2VzIGluIHRob3Nl
IDY0LWJpdCB3aW5kb3dzLgo+Pgo+PiBDbGVhciBJT1JFU09VUkNFX01FTV82NCBmcm9tIGhvc3Qg
YnJpZGdlIHdpbmRvd3Mgc2luY2Ugd2UgZG9uJ3QgbmVlZAo+PiB0aGF0IGluZm9ybWF0aW9uLgo+
Cj4gSSd2ZSB0ZXN0ZWQgdGhlIHBhdGNoIG9uIG15IHJvY2twcm82NC4gS2VybmVsIGJ1aWx0IGZy
b20gdGFnIHY1LjEzLXJjNjoKPgo+IFvCoMKgwqAgMC4zNDU2NzZdIHBjaSAwMDAwOjAxOjAwLjA6
IDguMDAwIEdiL3MgYXZhaWxhYmxlIFBDSWUgYmFuZHdpZHRoLCBsaW1pdGVkIGJ5Cj4gMi41IEdU
L3MgUENJZSB4NCBsaW5rIGF0IDAwMDA6MDA6MDAuMCAoY2FwYWJsZSBvZiAzMS41MDQgR2IvcyB3
aXRoIDguMCBHVC9zIFBDSWUKPiB4NCBsaW5rKQo+IFvCoMKgwqAgMC4zNTkzMDBdIHBjaV9idXMg
MDAwMDowMTogYnVzbl9yZXM6IFtidXMgMDEtMWZdIGVuZCBpcyB1cGRhdGVkIHRvIDAxCj4gW8Kg
wqDCoCAwLjM1OTM0M10gcGNpIDAwMDA6MDA6MDAuMDogQkFSIDE0OiBubyBzcGFjZSBmb3IgW21l
bSBzaXplIDB4MDAxMDAwMDBdCj4gW8KgwqDCoCAwLjM1OTM2NV0gcGNpIDAwMDA6MDA6MDAuMDog
QkFSIDE0OiBmYWlsZWQgdG8gYXNzaWduIFttZW0gc2l6ZSAweDAwMTAwMDAwXQo+IFvCoMKgwqAg
MC4zNTkzODddIHBjaSAwMDAwOjAxOjAwLjA6IEJBUiAwOiBubyBzcGFjZSBmb3IgW21lbSBzaXpl
IDB4MDAwMDQwMDAgNjRiaXRdCj4gW8KgwqDCoCAwLjM1OTQwN10gcGNpIDAwMDA6MDE6MDAuMDog
QkFSIDA6IGZhaWxlZCB0byBhc3NpZ24gW21lbSBzaXplIDB4MDAwMDQwMDAgNjRiaXRdCj4gW8Kg
wqDCoCAwLjM1OTQyOF0gcGNpIDAwMDA6MDA6MDAuMDogUENJIGJyaWRnZSB0byBbYnVzIDAxXQo+
IFvCoMKgwqAgMC4zNTk4NjJdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogUE1FOiBTaWduYWxpbmcg
d2l0aCBJUlEgNzYKPiBbwqDCoMKgIDAuMzYwMTkwXSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IEFF
UjogZW5hYmxlZCB3aXRoIElSUSA3Ngo+Cj4gS2VybmVsIGJ1aWx0IGZyb20gdGFnIHY1LjEzLXJj
NiB3aXRoIHRoaXMgcGF0Y2ggYXBwbGllZDoKPgo+IFvCoMKgwqAgMC4zNDU0MzRdIHBjaSAwMDAw
OjAxOjAwLjA6IDguMDAwIEdiL3MgYXZhaWxhYmxlIFBDSWUgYmFuZHdpZHRoLCBsaW1pdGVkIGJ5
Cj4gMi41IEdUL3MgUENJZSB4NCBsaW5rIGF0IDAwMDA6MDA6MDAuMCAoY2FwYWJsZSBvZiAzMS41
MDQgR2IvcyB3aXRoIDguMCBHVC9zIFBDSWUKPiB4NCBsaW5rKQo+IFvCoMKgwqAgMC4zNTkwODFd
IHBjaV9idXMgMDAwMDowMTogYnVzbl9yZXM6IFtidXMgMDEtMWZdIGVuZCBpcyB1cGRhdGVkIHRv
IDAxCj4gW8KgwqDCoCAwLjM1OTEyOF0gcGNpIDAwMDA6MDA6MDAuMDogQkFSIDE0OiBhc3NpZ25l
ZCBbbWVtIDB4ZmEwMDAwMDAtMHhmYTBmZmZmZl0KPiBbwqDCoMKgIDAuMzU5MTU1XSBwY2kgMDAw
MDowMTowMC4wOiBCQVIgMDogYXNzaWduZWQgW21lbSAweGZhMDAwMDAwLTB4ZmEwMDNmZmYgNjRi
aXRdCj4gW8KgwqDCoCAwLjM1OTIxN10gcGNpIDAwMDA6MDA6MDAuMDogUENJIGJyaWRnZSB0byBb
YnVzIDAxXQo+IFvCoMKgwqAgMC4zNTkyMzldIHBjaSAwMDAwOjAwOjAwLjA6wqDCoCBicmlkZ2Ug
d2luZG93IFttZW0gMHhmYTAwMDAwMC0weGZhMGZmZmZmXQo+IFvCoMKgwqAgMC4zNTk0MjJdIHBj
aWVwb3J0IDAwMDA6MDA6MDAuMDogZW5hYmxpbmcgZGV2aWNlICgwMDAwIC0+IDAwMDIpCj4gW8Kg
wqDCoCAwLjM1OTY4N10gcGNpZXBvcnQgMDAwMDowMDowMC4wOiBQTUU6IFNpZ25hbGluZyB3aXRo
IElSUSA3Ngo+IFvCoMKgwqAgMC4zNjAwMDFdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogQUVSOiBl
bmFibGVkIHdpdGggSVJRIDc2Cj4KPiBBbmQgdGhlIE5WTUUgb24gdGhlIFBDSUUgZXhwYW5zaW9u
IGNhcmQgd29ya3MgYXMgZXhwZWN0ZWQ6Cj4KPiBUZXN0ZWQtYnk6IEFsZXhhbmRydSBFbGlzZWkg
PGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4KClRoYW5rcyBhIGxvdCBmb3IgdGhlIHJldGVzdCBh
bmQgdGhlIGRldGFpbGVkIGxvZ3MuCgpQdW5pdAoKWy4uLl0KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
