Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B1B6C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 13:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdERZY6LVR2aiB24nD0413ImZADRdizuZaa6myM5Mks=; b=EcyXT9V6kz9r3F
	x+prFW4Onk2BkhUQzLhzDG7eKoiTyaOOTkRNg4FDlvbqC1omrgvhtC5jEShDet92Tty8m7D0rAGqB
	gXjjdG8It0Isy+W18lWT69ZTxoFC+vCjE5yJY2/UadXmyxabvMA0pYtom44fdfBZBhD1RynkcdF2A
	1NjBeZUosNX4ygMkvyb4XhVD6c3q7lPBWYU1TZxZEZP203GfvGWyEwo4L5gxtXf1ymxoF96vNcRtc
	cacuVinHgQZ7SIYvvXv4k+k/iEi+ZepXQbfev1apbBwjWowkkVNIg2zLZ778HyAwC1ytU/+FJQ7L9
	Vx0QfAohurL0iJvzNwrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZv2Q-002QLe-EU; Thu, 31 Mar 2022 13:40:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZv2N-002QKl-QQ
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 13:40:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id E26221F468C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648734029;
 bh=JMI9DF713E6Bedui+fXfewEWfQB3MYjowcqT1ROwzdk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=IbswILxvo7LGIbjTS6A4Z+mCEy/8t0Es14/FObmIQ6gNSGCv74NdFU7OEtIanJIwk
 camY8wbfbpR6kRV8QHHlpAoBGxXfkbhMZGWzv9fWzfR+HCXuSc4Vt1ISlFcqgFk4TV
 xSX6vQI1PQo+TR/BjD1Fu8vGapdIRi3iJQhaRHvfTZAlAjkO5Vc0YlnNC+geZJMB09
 lMiDqcC5/iLHH9C25CTekZjlVTFf+HMCLEu5k+HJ2AUem9+8lxCc8XEQeUoYc/mEV8
 gS4t2aAMSN5ONp+v4KqzLp5EutpwgLW6IKmv94L/GYmfW3DlcNiMp31RSy3I5aui7o
 o/hvSz1iZPf8Q==
Message-ID: <ce1cbeab5e4a8a8338f2567f05af3226305410c7.camel@collabora.com>
Subject: Re: [PATCH v1 19/24] media: rkvdec-h264: Add field decoding support
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 kernel@collabora.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-kernel@vger.kernel.org
Date: Thu, 31 Mar 2022 09:40:18 -0400
In-Reply-To: <20220330151658.GV12805@kadam>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-20-nicolas.dufresne@collabora.com>
 <20220329081321.GV3293@kadam>
 <f7e5b577bc48ba16befbed47ac96c363ce861f48.camel@collabora.com>
 <20220330051541.GE3293@kadam>
 <ed16a4dcfb0859a284675ddad46ab536008a15c5.camel@collabora.com>
 <20220330151658.GV12805@kadam>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_064032_025176_6AE6ABCE 
X-CRM114-Status: GOOD (  25.72  )
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

TGUgbWVyY3JlZGkgMzAgbWFycyAyMDIyIMOgIDE4OjE2ICswMzAwLCBEYW4gQ2FycGVudGVyIGEg
w6ljcml0wqA6Cj4gWWVhaC4gIEknbSBhYm9zbHV0ZWx5IGZpbmUgd2l0aCB3aGF0ZXZlciB5b3Ug
ZG8uICBTb21lIG9mIHRoZSBxdWVzdGlvbnMKPiB5b3UncmUgYXNraW5nIG9jY3VycmVkIHRvIG1l
IHRvbyBidXQgSSBkb24ndCBoYXZlIHRoZSBhbnN3ZXJzLgo+IAo+ID4gPiA+ID4gPiArCQlmb3Ig
KGkgPSAwOyBpIDwgYnVpbGRlci0+bnVtX3ZhbGlkOyBpKyspIHsKPiA+ID4gPiA+ID4gKwkJCXN0
cnVjdCB2NGwyX2gyNjRfcmVmZXJlbmNlICpyZWY7Cj4gPiA+ID4gPiA+ICsJCQl1OCBkcGJfdmFs
aWQ7Cj4gPiA+ID4gPiA+ICsJCQl1OCBib3R0b207Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZXNl
IHdvdWxkIGJlIGJldHRlciBhcyB0eXBlIGJvb2wuCj4gPiA+ID4gCj4gPiA+ID4gSSBuZXZlciB1
c2VkIGEgYm9vbCBmb3IgYml0IG9wZXJhdGlvbnMgYmVmb3JlLCBidXQgSSBndWVzcyB0aGF0IGNh
biB3b3JrLCB0aGFua3MKPiA+ID4gPiBmb3IgdGhlIHN1Z2dlc3Rpb24uIEFzIHRoaXMgZGV2aWF0
ZXMgZnJvbSB0aGUgb3JpZ2luYWwgY29kZSwgSSBzdXBwb3NlIEkgc2hvdWxkCj4gPiA+ID4gbWFr
ZSB0aGlzIGEgc2VwYXJhdGUgcGF0Y2ggPwo+ID4gPiAKPiA+ID4gSSBqdXN0IHNhdyB0aGUgbmFt
ZSBhbmQgd29uZGVyZWQgd2h5IGl0IHdhcyBhIHU4LiAgYm9vbCBkb2VzIG1ha2UgbW9yZQo+ID4g
PiBzZW5zZSBhbmQgd29ya3MgZmluZSBmb3IgdGhlIGJpdHdpc2Ugc3R1ZmYuICBCdXQgSSBkb24n
dCByZWFsbHkgY2FyZSBhdAo+ID4gPiBhbGwuCj4gPiAKPiA+IEknbGwgZG8gdGhhdCBpbiB2Miwg
aW4gc2FtZSBwYXRjaCwgbG9va3MgbWlub3IgZW5vdWdoLiBJIHRoaW5rIGlmIHVzaW5nIGJvb2wK
PiA+IGNvdWxkIGd1YXJhbnR5IHRoYXQgb25seSAxIG9yIDAgaXMgIHBvc3NpYmxlLCBpdCB3b3Vs
ZCBiZSBldmVuIGJldHRlciwgYnV0IGRvbid0Cj4gPiB0aGluayBDIHdvcmtzIGxpa2UgdGhpcy4K
PiAKPiBJJ20gbm90IHN1cmUgSSB1bmRlcnN0YW5kLiAgSWYgeW91IGFzc2lnbiAiYm9vbCB4ID0g
PGFueSBub24temVybz47Igo+IHRoZW4geCBpcyBzZXQgdG8gdHJ1ZS4gIERvIHlvdSB3YW50IGEg
c3RhdGljIGNoZWNrZXIgd2FybmluZyBmb3IgaWYKPiA8YW55IG5vbi16ZXJvPiBjYW4gYmUgc29t
ZXRoaW5nIG90aGVyIHRoYW4gb25lIG9yIHplcm8/ICBUaGUgcHJvYmxlbSBpcwo+IHRoYXQgcGVv
cGxlIHNvbWV0aW1lcyBkZWxpYmVyYXRlbHkgZG8gc3R1ZmYgbGlrZSAiYm9vbCB4ID0gdmFyICYg
MHhmMDsiLgo+IFNtYXRjaCB3aWxsIGNvbXBsYWluIGlmIHlvdSBhc3NpZ24gYSBuZWdhdGl2ZSB2
YWx1ZSB0byB4Lgo+IAo+IHRlc3QuYzo4IHRlc3QoKSB3YXJuOiBhc3NpZ25pbmcgKC0zKSB0byB1
bnNpZ25lZCB2YXJpYWJsZSAneCcKPiAKPiBJdCdzIHN1cHBvc2VkIHRvIHByaW50IGEgd2Fybmlu
ZyBpZiB5b3UgdXNlZCBpdCB0byBzYXZlIGVycm9yIGNvZGVzIGxpa2U6Cj4gCj4gCXggPSBzb21l
X2tlcm5lbF9mdW5jdGlvbigpOwo+IAo+IEJ1dCBpdCBkb2VzIG5vdC4gIDovICBTb21ldGhpbmcg
dG8gaW52ZXN0aWdhdGUuCgpUaGF0IHdvdWxkIGJlIGFuIGFtYXppbmcgY2F0Y2gsIHlvdSBtaWdo
dCBoYXZlIHNlZW4gYSBsb3Qgb2Y6CgogIHggPSAhISh2YXIgJiAweGYwKQoKRm9yIGJyYW5jaGVz
LCBpdCBkb2VzIG5vIG1hdHRlciwgYnV0IGlmIHlvdSB1c2UgeCBpdCBsaWtlIHRoaXMgZHBiX3Zh
bGlkCnZhcmlhYmxlIGlzIHVzZWQsIG5vdCBoYXZpbmcgMCBvciAxIGNhbiBsZWFkIHRvIHZlcnkg
c3VycHJpc2luZyByZXN1bHRzLiBJbiB0aGUKZW5kIGl0cyB1c2VkIGxpa2UgdGhpcwoKICBzZXRf
cmVnKHJlZzAsIHZhbCB8ICh4IDw8IE4pKQoKU28gdXNpbmcgYm9vbCB0eXBlIGNhbiBoaW50IHRo
ZSBhbmFseXplciB0aGF0IDAgb3IgMSB3YXMgbGlrZWx5IGV4cGVjdGVkLCB3aGlsZQpjdXJyZW50
bHkgYW4gdTggd291bGQgYmUgYW1iaWd1b3VzIGFuZCBsZWFkIHRvIGZhbHNlIHBvc2l0aXZlIGlm
IHdlIHdlcmUgdG8Kd2Fybi4KCj4gCj4gcmVnYXJkcywKPiBkYW4gY2FycGVudGVyCj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
