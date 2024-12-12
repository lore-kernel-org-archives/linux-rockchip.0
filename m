Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837AAE7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 16:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2kr88nsXeHqNNCrPDeWCC+cJTcL4nXW2jGaIJFS//Y=; b=bqr9iXjjhlgczk
	64Z/QHJAJzHM6GpsS6yuqG7V8KtMF1BUm7zYzHanl0ED86ILEHelxkW2tWajlyaYnhN2x3TX/1trk
	rbIIU5h0/pjoB1O59C+cMYLxVIuVkqKa55NxIB4GCCiuV6wLmOlhxkt3aafRWntuBXmF8wmikwMXO
	mWVN4nfsX7/WwTxaSW150uWGRfyMCJbKiiyQXwpWu6x84Ge1IuVnu9ZGJ6e6udXd+eMd8ap/A6Ihd
	D4i6EriGY70zRuL78wTtIZhsMDuBu4JCFa6naDaGnd/wlG/K8Yu66wedJVrgcJfivscy/58A0hyYj
	j04RKePr4+6z4hzPL6Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlnC-00000000uTU-2GvM;
	Thu, 12 Dec 2024 16:11:58 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlXS-00000000qDW-0SHn;
	Thu, 12 Dec 2024 15:55:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DC3BDA42910;
	Thu, 12 Dec 2024 15:53:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9073DC4CED3;
	Thu, 12 Dec 2024 15:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734018940;
	bh=PKNBf0TCKuwNcifWvhSa7hUFVANZKsYx7vGJQEMnWHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JbTyuEFzQhdRJOmDrKJyk9vWtv59qHQf6NV5vzbP3QL+w07scAiTpND/D+fCd5C8M
	 HGFo7Zr4lA5KuhQLh7wMkG5WWx5Kwal2PKprL1LophqlY/WN+VyLBpsZN7PTE0uCjd
	 XCQ0F8h0QOZONPX2obr7xgnwPTHDCgpgZWYhjXMhHfrPQXzgzL7yfoJDVJvO65o1bq
	 w/zHPnbEtKLRQh0t0kyUZvpJsBX6ZnpdESQlKb/vt8tTSwZJc/KFJ6+Q+rhQJ5VEUp
	 PKEBQhBU2DPnV/ofyaUbQV54Hzth2cvwnkNcKOatzAiuYps8eAMqojXzk68jfIL7aF
	 PBNJQBAh1PLCA==
Date: Thu, 12 Dec 2024 15:55:33 +0000
From: Lee Jones <lee@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, jic23@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
Message-ID: <20241212155533.GG7139@google.com>
References: <20241107114712.538976-1-heiko@sntech.de>
 <20241211120844.GD7139@google.com>
 <n914pn7o-pr9n-5ss0-p744-73402nnn843p@xreary.bet>
 <3196449.TQGk6oTFT5@diego>
 <4s41717n-3888-os6o-384n-7678n0361r0s@xreary.bet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4s41717n-3888-os6o-384n-7678n0361r0s@xreary.bet>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_075542_212474_0CB1002A 
X-CRM114-Status: GOOD (  20.65  )
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

T24gV2VkLCAxMSBEZWMgMjAyNCwgSmlyaSBLb3NpbmEgd3JvdGU6Cgo+IE9uIFdlZCwgMTEgRGVj
IDIwMjQsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IAo+ID4gPiA+ID4gPiA+IFRoaXMgY2hhbmdl
IHdhcyBtb3JlIG9yIGxlc3MgYSBzdXJwcmlzZSBmaW5kLCBiZWNhdXNlIEkgd2FudGVkIHRvIG1h
a2UKPiA+ID4gPiA+ID4gPiB0aGUgcGxhdGZvcm1fZGF0YSBwb2ludGVyIGluIHRoZSBtZmRfY2Vs
bCBzdHJ1Y3QgY29uc3QgYW5kIHRoaXMgdGhlIGhpZAo+ID4gPiA+ID4gPiA+IHNlbnNvciBodWIg
c3Rvb2Qgb3V0IGFzIGRvaW5nIHNvbWV0aGluZyBzdHJhbmdlIDstKSAuCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gU28gcGF0Y2ggMiBvZiB0aGlzIHNlcmllcyBhY3R1YWxseSBkZXBlbmRz
IG9uIHRoaXMgY2hhbmdlIHRvIG5vdCBjYXVzZQo+ID4gPiA+ID4gPiA+IGJ1aWxkIGVycm9ycy4K
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEFoLCByaWdodC4KPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gQnV0IHNlZWluZyB0aGF0IHdlJ3JlIGFmdGVyIC1yYzYgYWxyZWR5LCBJIHdvdWxkIGFz
c3VtZSB0aGUgYnJ1bnQgb2YgdGhlIAo+ID4gPiA+ID4gPiA+IG1jdSBzZXJpZXMgbWlnaHQgbmVl
ZCB0byB3YWl0IGFmdGVyIDYuMTMtcmMxIGFueXdheSAtIGJ1dCBJIGd1ZXNzIHRoYXQgCj4gPiA+
ID4gPiA+ID4gZGVwZW5kcyBvbiBob3cgTGVlIHNlZXMgdGhpbmdzIDstKSAuCj4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiBPSywgSSBhbSBrZWVwaW5nIG15IGhhbmRzIG9mZiBpdCBmb3IgdGhlIHRp
bWUgYmVpbmcuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEkgY2FuIHRha2UgaXQgbm93IHdpdGggYW4g
QWNrLgo+ID4gPiA+IAo+ID4gPiA+IExvb2tpbmcgdG8gYXBwbHkgdGhpcyBzZXQgbm93Lgo+ID4g
PiA+IAo+ID4gPiA+IEFjayBwbGVhc2UuCj4gPiA+IAo+ID4gPiBJJ2QgcHJlZmVyZXIgaWYgU3Jp
bml2YXMgY291bGQgYWNrIHRoaXMgYXMgdGhlIG1vcmUgc3BlY2lmaWMgbWFpbnRhaW5lci4gCj4g
PiA+IFNyaW5pdmFzLCBwbGVhc2U/IAo+ID4gCj4gPiBUaGUgcGF0Y2ggYWxyZWFkeSBpbmNsdWRl
cyB0aGUKPiA+ICAgIEFjayBmcm9tIFNyaW5pdmFzIFBhbmRydXZhZGEgPHNyaW5pdmFzLnBhbmRy
dXZhZGFAbGludXguaW50ZWwuY29tPgo+ID4gZnJvbSBhIHByZXZpb3VzIHZlcnNpb24sIHNvIEkg
Z3Vlc3MgaXQgc2hvdWxkIGJlIG9rIGFscmVhZHk/Cj4gCj4gQWgsIEkgbWlzc2VkIHRoYXQsIGlu
ZGVlZCwgc29ycnkgZm9yIHRoZSBub2lzZS4KPiAKPiBXaXRoIHRoYXQKPiAKPiAJQWNrZWQtYnk6
IEppcmkgS29zaW5hIDxqa29zaW5hQHN1c2UuY29tPgo+IAo+IGFuZCBMZWUsIHBsZWFzZSBmZWVs
IGZyZWUgdG8gdGFrZSBpdC4KClRoYW5rcywgd2lsbCBkby4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
