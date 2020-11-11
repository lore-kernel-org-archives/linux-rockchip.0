Return-Path: <SRS0=RWH0=ER=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C01C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 01:08:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E03FB21D46
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 01:08:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lTAKiFwC";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=vanguardiasur-com-ar.20150623.gappssmtp.com header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.b="Lovjln1f"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E03FB21D46
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tZ+zsZlz1azGUBnZ/7+bVNGOK5HimqGNyWev1ODn3A4=; b=lTAKiFwCTo77eQDMgvKpqY4r0
	3dOtTfeE6KD4d+8o7C5HKirFMiaQWdngFuKohCvtPMRqSeiYidCkqGURnOTz0fGeu0dGIe1JP55fA
	HgPuSKoF/KxdzhfEyYH1PdtlfdoHzp8ScEwAwTHjv3fPu2VzxlN2Yw+ldKRGhh/u4IEzsjqK9yMbC
	I6tNVu8drSEYtoi92a6JyF2qfFFqejizVUqe1GZl5FQy1jE7KUql+e5L7ustM4mVTz5zoa4RLX/wg
	6qLkw8q9NgeJUCxClXy0p4Afg+886ewE8Js6ryHhI6IyT5tUyIFI844Bj7/ELHlEmYbTZg92doNwz
	x9TtsOj1g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcecp-00089x-8r; Wed, 11 Nov 2020 01:08:39 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kceck-000895-Sm
 for linux-rockchip@lists.infradead.org; Wed, 11 Nov 2020 01:08:37 +0000
Received: by mail-ej1-x641.google.com with SMTP id f20so457349ejz.4
 for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2020 17:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hHQDiEVFp1foYy6daRs4fHFD9ayYaszDLVuF2Z51ya8=;
 b=Lovjln1fIbkD2LOWfwf5p5B1YNXCK0mWG+9fGH4sigwtycevhDKQ0AeODjSfHWpjwF
 iNdy65rI1Wq5x2Grg8/Relh95qlXkU51w/ZD0lb9LhW7+fZEozkHk34DrT0UMCUN6cZK
 iPllHOzKkEliSAK+mJhJhzW+6hAXS8kRfEc/mBC9gPXCg/l/b8iy2GV7cFhZDAUD+UIi
 j4prnHj/aTGgJC/9VBDvxk8HE9lsb0hdMkmXEc2OhmWjr10S6kulM4D/D/k2NonVfPgX
 1Uj1X6kTPhq9mHhJF+/r4mwzp3aPzJFUKDSUdlBWYLIeWryBNUUdb8Mdv+M7VDq8KMqv
 Mbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hHQDiEVFp1foYy6daRs4fHFD9ayYaszDLVuF2Z51ya8=;
 b=J/j0kaDYI+IQCOO1hm66JmxWGPeLnW649bekOt7JndLWJK4ySqBY8nA750IawDW95I
 jgGoN5tlkWT3Qi/k0+pkGUXZb+hqiJAAbBTVfOTpUyurhnnuecOnD/f4NA1/9Ch6J0bl
 nICR7LLAum6jHYcbedbHBKGH7BJGGELati+nekpncLyCd1H20lwq4g0UGFC7RgwxfdAr
 F/5KWhzw0QoxjP7kfMNM79iDUhhcilTCt6O8+kGDeWbPgJX+bJ/j9VdKxBvYU9eKOO/j
 7AwuWjIkxeQWuRImjrXP2zutucVo+BjZjD8WN2sA2T0oEQCmVKZkGQjc2h6fJDngX0f/
 w1JQ==
X-Gm-Message-State: AOAM530dKAkH83fESVjXjS7Fzth318Ecv4ftMb3X6F+NxasASPOlLw0n
 GeC/wTqTRFBQswgupo3kD+aGlt8Pe7Jm9liVP+u5yQ==
X-Google-Smtp-Source: ABdhPJxTkNCrHxkNrKMGfx/redHh8XOwE0W/+nPr1awBqj+Z+Er5yh4soUAWZNDAv2tGIUavyTgUj5FavxbQfUNMpTU=
X-Received: by 2002:a17:906:3541:: with SMTP id
 s1mr23454310eja.413.1605056913762; 
 Tue, 10 Nov 2020 17:08:33 -0800 (PST)
MIME-Version: 1.0
References: <20201109162244.16531-1-linkmauve@linkmauve.fr>
In-Reply-To: <20201109162244.16531-1-linkmauve@linkmauve.fr>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 10 Nov 2020 22:08:21 -0300
Message-ID: <CAAEAJfDhQpZYRMQoQRy=2AUSQFpmy2cQ4y=2sczWgkDp03dYEw@mail.gmail.com>
Subject: Re: [RESEND PATCH 0/2] media: uapi: Expose VP8 probability lengths as
 defines
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201110_200835_225008_026A0BBB 
X-CRM114-Status: GOOD (  17.04  )
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRW1tYW51ZWwsCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIE1vbiwgOSBOb3YgMjAyMCBh
dCAxNTozNywgRW1tYW51ZWwgR2lsIFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4gd3Jv
dGU6Cj4KPiBUaGVzZSB2YWx1ZXMgd2lsbCBiZSB1c2VkIGJ5IHZhcmlvdXMgZHJpdmVycyBpbXBs
ZW1lbnRpbmcgdGhlIFZQOAo+IHN0YXRlbGVzcyBBUEkuCj4KPiBUaGlzIGhhZCBiZWVuIHN1Z2dl
c3RlZCBieSBFemVxdWllbCBHYXJjaWEgZm9yIHRoZSBDZWRydXMgVlA4IGRyaXZlci4KPgo+IFRo
ZSBvbmx5IGRyaXZlciB1c2luZyB0aGlzIEFQSSAodW50aWwgbm93KSBoYXMgYWxzbyBiZWVuIHVw
ZGF0ZWQgdG8gdXNlCj4gdGhlc2UgbmV3IGRlZmluZXMuCj4KPiBUaGlzIGlzIGEgcmVzZW5kIGJl
Y2F1c2UgSSBmb3Jnb3QgdG8gaW5jbHVkZSBtb3N0IG1haW50YWluZXJzLCBzb3JyeSBmb3IKPiB0
aGF0LiAgSXTigJlzIG15IHZlcnkgZmlyc3QgcGF0Y2ggdG8gdGhlIGtlcm5lbCwgSSBkaWRu4oCZ
dCBrbm93IGFib3V0Cj4gc2NyaXB0cy9nZXRfbWFpbnRhaW5lcnMucGwKPgoKSSBoYXZlbid0IHZh
bGlkYXRlZCB0aGVzZSB0d28gcGF0Y2hlcywgYnV0IG9uIGEgZmlyc3QgbG9vaywKaXQgc2VlbXMg
aXQncyBhIGxvdy1oYW5naW5nIGZydWl0IG5pY2UgY2xlYW51cC4gVGhhbmtzIGZvciB0aGF0IQoK
U2luY2UgaXQgc2VlbXMgeW91IGFyZSBsb29raW5nIGZvciBpbnRlcmVzdGluZyB0aGluZ3MgdG8g
Y29udHJpYnV0ZSwKbm90ZSB0aGF0IHRoZSB2cDgtY3RybHMuaCBoZWFkZXIgaXMgbGFja2luZyBz
b21lIG5pY2UgZG9jdW1lbnRhdGlvbgpvbiBlYWNoIHN0cnVjdHVyZS4KClRoaXMgc2hvdWxkIGJl
IGRvbmUgYnkgbG9va2luZyBhdCB0aGUgVlA4IHN5bnRheCBzcGVjIGFuZCBkb2N1bWVudGluZwp0
aGluZ3MgYXBwcm9wcmlhdGVseS4gU2VlIGhvdyBpdCdzIGRvbmUgZm9yIEguMjY0IGFuZCBWUDk6
CgpodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL3BhdGNo
LzIwMjAwOTI4MjAxNDMzLjMyNzA2OC0xLWV6ZXF1aWVsQGNvbGxhYm9yYS5jb20vCmh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDIwMTEw
MjE5MDU1MS4xMjIzMzg5LTMtYWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5jb20vCgpUaGFua3MsCkV6
ZXF1aWVsCgo+IEVtbWFudWVsIEdpbCBQZXlyb3QgKDIpOgo+ICAgbWVkaWE6IHVhcGk6IEV4cG9z
ZSBwcm9iYWJpbGl0eSBsZW5ndGhzIGFzIGRlZmluZXMKPiAgIG1lZGlhOiBoYW50cm86IFVzZSBW
UDggbGVuZ3RocyBkZWZpbmVkIGluIHVhcGkKPgo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb192cDguYyB8IDQgKystLQo+ICBpbmNsdWRlL21lZGlhL3ZwOC1jdHJscy5oICAg
ICAgICAgICAgICAgICB8IDYgKysrKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjI5LjIKPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
