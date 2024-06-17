Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A379C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjuUC4kmOUxEeAAhk6Zlqpe0TGprHxesu4H2vzli+o4=; b=35rpcmgWhOccWv
	xjU7dPwQhMOMuOnJhV36hg3Q32L+mUi/yPQjmGxgShxt6yaXKaohQyACGMXZzcunVlY149B4HRuqm
	vqyt07jd7A/K6UY00rIUNdEOwR+bpN2xNNunj0AWnFUVQ2Y4cyYrGwfoZIDWtOvrDzjjh6TXL0ZlD
	FN9nPWu6MeRzJRrkPawv6diFMIpuX90zHargdo7U1pfox3NHHbpgbV7Zr5rV5Ww5YDMWfQZ99gC4K
	W0R7NMAGOakgyD3Ck+eQCbER0g3NCQbJs9Vdf1GCmwQFjK58024vV2wwDaq98BPYg8UUdQYfvmfvW
	YjqVFiNk2le9tiVhjRwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEBh-0000000BQmt-2ZiT;
	Mon, 17 Jun 2024 15:22:29 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJEBd-0000000BQjw-3Dwq
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 15:22:28 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-797e2834c4eso374795385a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 08:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1718637744; x=1719242544; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3/FM3QUCn6Oly1MyDk1CjKXwx7qpQYJAZGU3cke12jM=;
        b=3IATvfjSI7MvMxBXL9CGBj9cg4g+BjJ0vjUlFtnvzDzhRRQdcF/UnoUKElD7n9v8oy
         Z/SwMMgfVpmuxodqpa2y71Akt/EfqZLPJ4l5R/B48L1umNHhXCNnjWdfgKJitK4iSpA5
         dcqRwBui/u7Vm9NYaYqTFm/MGBHnNiwvDV1HGUnolejnU+rsfmqIPR9gr8gVduKYGbp0
         UEPvWIbj/n7Jy3bgeOgLvoh1TZrkACZqhgr+/aBY6WEe3x5aLAOfKsJOW1uTegxGMFXW
         2OKKb0UCFY1AhA8/4KDoRxOqXdnMdFI0ua7Su+8IYh6kGvnxD1FhNUcZULpPioh3Uh6S
         jkoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718637744; x=1719242544;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3/FM3QUCn6Oly1MyDk1CjKXwx7qpQYJAZGU3cke12jM=;
        b=mKIggKVlQgm5fGD79piG1lfC0prgUqHDHBZ1k5rQForvHY70u033Z0je0/PnY9NPzU
         6yAkVC4T2QnbBmcEjHqYenrVIaHHhJTRvUUXnsTvw+vX6yVD7qWRNuSdh5/c9M6qgH3K
         w+qzGe3AZlj0xJjOsxV6aAVTV0wqLay/xmpdHU8EpFZ578m6KkjpmeUtn8njR+dtbn23
         tWJHZ4Tf+kZS+oEqAMPKAWz/ADTQWGdVZVg+ltu/RZfhYU4pp7s4UKwr9cIoYoU6nyce
         mnPSHgjNkivHhO691DElNogFJ5xqknjyY7Xk2pHP6XbSGQrwrc+f4IDsMp2gewYCmaUC
         Suzw==
X-Forwarded-Encrypted: i=1; AJvYcCUIOFtrFMO3yeH1yeKfhztkb/3fX7Mu5cGbLjqg+SWEV/zjXv5T/RiRK6lFKzVJ9s0kLl1WaqQLCMiQTD0lSVLzqRDSXfMR0QapcYCKVk+9yteY
X-Gm-Message-State: AOJu0YxHbPT/MxnOkZALkwyeuDmvk7D/bI4+XxpM8UnGcQZKd0e+Kjou
	5dLKgeHYxvSK/TT/qK5zkDASsvGNJ9uKioisgXfeoIEtp7pURdbazooO7fs4JwE=
X-Google-Smtp-Source: AGHT+IGgbfn+7mAk/1/X8Q8iM0sSSXawlAQZ4Cyo4qH0flu14E16sBQYKctBfM4ogrts8SmywVEXoA==
X-Received: by 2002:a05:620a:1710:b0:795:5750:cef7 with SMTP id af79cd13be357-798d03e6830mr1608790385a.36.1718637744495;
        Mon, 17 Jun 2024 08:22:24 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:57da::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798aaee575fsm438671285a.40.2024.06.17.08.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 08:22:24 -0700 (PDT)
Message-ID: <e5d2f6d735bb4c997393e6d3ace53953b062ecd8.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Detlev Casanova <detlev.casanova@collabora.com>, Jianfeng Liu
	 <liujianfeng1994@gmail.com>
Cc: alchark@gmail.com, andy.yan@rock-chips.com, conor+dt@kernel.org, 
	cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org, 
	didi.debian@cknow.org, dsimic@manjaro.org, gregkh@linuxfoundation.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	mchehab@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com
Date: Mon, 17 Jun 2024 11:22:23 -0400
In-Reply-To: <4116468.VLH7GnMWUR@arisu>
References: <20240615015734.1612108-2-detlev.casanova@collabora.com>
	 <20240617094735.27928-1-liujianfeng1994@gmail.com>
	 <f295f41ef1c9ee920ac3ac8e70ccf672ba7c9648.camel@ndufresne.ca>
	 <4116468.VLH7GnMWUR@arisu>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_082225_850478_144FAC7C 
X-CRM114-Status: GOOD (  27.29  )
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

TGUgbHVuZGkgMTcganVpbiAyMDI0IMOgIDEwOjIwIC0wNDAwLCBEZXRsZXYgQ2FzYW5vdmEgYSDD
qWNyaXTCoDoKPiBPbiBNb25kYXksIEp1bmUgMTcsIDIwMjQgMTA6MDQ6NTkgQS5NLiBFRFQgTmlj
b2xhcyBEdWZyZXNuZSB3cm90ZToKPiA+IEhpLAo+ID4gCj4gPiBMZSBsdW5kaSAxNyBqdWluIDIw
MjQgw6AgMTc6NDcgKzA4MDAsIEppYW5mZW5nIExpdSBhIMOpY3JpdCA6Cj4gPiA+IEhpIERldGxl
diwKPiA+ID4gCj4gPiA+IFRoYW5rcyBhIGxvdCBmb3IgeW91ciB3b3JrISBJIHRyeSB0byB1c2Ug
cmt2ZGVjMiB3aXRoIGNocm9taXVtIGJ1dCBpdAo+ID4gPiBjYW4ndCBwbGF5IGgyNjQgdmlkZW8u
IEhlcmUgaXMgdGhlIGxvZyBvZiBjaHJvbWl1bToKPiA+ID4gCj4gPiA+IFs1Nzk5OjU4NzM6MDYx
Ny8xNzEyMjQuODUwMDYxOlZFUkJPU0UyOnZpZGVvX2RlY29kZXJfcGlwZWxpbmUuY2MoNDczKV0K
PiA+ID4gSW5pdGlhbGl6ZSgpOiBjb25maWc6IGNvZGVjOiBoMjY0LCBwcm9maWxlOiBoMjY0IGhp
Z2gsIGxldmVsOiBub3QKPiA+ID4gYXZhaWxhYmxlLCBhbHBoYV9tb2RlOiBpc19vcGFxdWUsIGNv
ZGVkIHNpemU6IFsxOTIwLDEwODBdLCB2aXNpYmxlIHJlY3Q6Cj4gPiA+IFswLDAsMTkyMCwxMDgw
XSwgbmF0dXJhbCBzaXplOiBbMTkyMCwxMDgwXSwgaGFzIGV4dHJhIGRhdGE6IHRydWUsCj4gPiA+
IGVuY3J5cHRpb24gc2NoZW1lOiBVbmVuY3J5cHRlZCwgcm90YXRpb246IDDCsCwgZmxpcHBlZDog
MCwgY29sb3Igc3BhY2U6Cj4gPiA+IHtwcmltYXJpZXM6QlQ3MDksIHRyYW5zZmVyOkJUNzA5LCBt
YXRyaXg6QlQ3MDksIHJhbmdlOkxJTUlURUR9Cj4gPiA+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQu
ODUwOTE1OlZFUkJPU0UyOnY0bDJfdmlkZW9fZGVjb2Rlci5jYygxODIpXQo+ID4gPiBWNEwyVmlk
ZW9EZWNvZGVyKCk6Cj4gPiA+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODUxMjE4OlZFUkJPU0Ux
OnY0bDJfZGV2aWNlLmNjKDEyOCldIE9wZW4oKTogTm8KPiA+ID4gZGV2aWNlcyBzdXBwb3J0aW5n
IEgyNjQgZm9yIHR5cGU6IDAKPiA+ID4gWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44NTEzNDY6VkVS
Qk9TRTQ6djRsMl9xdWV1ZS5jYygxMDY5KV0gVGhpcyBxdWV1ZQo+ID4gPiBkb2VzICBzdXBwb3J0
IHJlcXVlc3RzLjogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeSAoMikKPiA+IFRoaXMgb25lIGlu
ZGljYXRlcyB0aGF0IFY0TDJfQlVGX0NBUF9TVVBQT1JUU19SRVFVRVNUUyBtaWdodCBiZSBtaXNz
aW5nIGluCj4gPiB0aGUgUkVRQlVGUyBpbXBsZW1lbnRhdGlvbi4gSSBzdXNwZWN0IEdTdHJlYW1l
ciBzaW1wbHkgYXNzdW1lcyB0aGlzIHRvZGF5Cj4gPiBmb3IgZHJpdmVyIGV4cG9zaW5nIHN0YXRl
bGVzcyBmb3JtYXRzICh3aGljaCBpcyBmYWlyLCBpdHMgbm90IGEgY29tcGxpYW5jZQo+ID4gdGVz
dCwgYW5kIHdlIGRvbid0IGhhdmUgYSBjb2RlYyBjb21wbGlhbmNlIHlldCkuCj4gCj4gVGhlcmUg
aXMgYSBzcmNfdnEtPnN1cHBvcnRzX3JlcXVlc3RzID0gdHJ1ZTsgRG8gSSBhbHNvIG5lZWQgdG8g
c2V0IGEgZmxhZyBvbiAKPiB0aGUgZGV2aWNlIGNhcHMgPwoKSSBkb24ndCBrbm93LCBidXQgeW91
IGNhbiBjaGVjayB2ZXJ5IGVhc2lseSB3aGF0IGZsYWdzIHlvdSBoYXZlIG91dCBvZiBSRVFCVUZT
CndpdGggdGhlIGRldl9kZWJ1ZyBvdXRwdXQgb3IgdXNpbmcgdjRsMi10cmFjZXIuCgpyZWdhcmRz
LApOaWNvbGFzCgo+IAo+ID4gSSdkIHN1Z2dlc3QgdG8gY2hlY2sgYW5kIGZpeCB0aGlzIG9uZSwg
YW5kIHJldHJ5LCBtaWdodCBvbmx5IGJlIG5vaXNlLCBtaWdodAo+ID4gYmUgdGhlIG1haW4gY2F1
c2UsIHdlIGNhbm5vdCB0ZWxsLgo+ID4gCj4gPiA+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODUx
NDI2OlZFUkJPU0UxOnY0bDJfdmlkZW9fZGVjb2Rlci5jYyg0NzYpXQo+ID4gPiBJbml0aWFsaXpl
QmFja2VuZCgpOiBVc2luZyBhIHN0YXRlbGVzcyBBUEkgZm9yIHByb2ZpbGU6IGgyNjQgaGlnaCBh
bmQKPiA+ID4gZm91cmNjOiBTMjY0Cj4gPiA+IFs1Nzk5OjU4ODY6MDYxNy8xNzEyMjQuODUxNjg3
OlZFUkJPU0UxOnY0bDJfdmlkZW9fZGVjb2Rlci5jYyg1OTgpXQo+ID4gPiBTZXR1cElucHV0Rm9y
bWF0KCk6IElucHV0IChPVVRQVVQgcXVldWUpIEZvdXJjYzogUzI2NAo+ID4gPiBbNTc5OTo1ODg2
OjA2MTcvMTcxMjI0Ljg1MTc5NzpWRVJCT1NFMTp2NGwyX3ZpZGVvX2RlY29kZXIuY2MoNjM2KV0K
PiA+ID4gQWxsb2NhdGVJbnB1dEJ1ZmZlcnMoKTogUmVxdWVzdGluZzogMTcgT1VUUFVUIGJ1ZmZl
cnMgb2YgdHlwZQo+ID4gPiBWNEwyX01FTU9SWV9NTUFQCj4gPiA+IFs1Nzk5OjU4ODY6MDYxNy8x
NzEyMjQuODY3Njg3OlZFUkJPU0UxOnY0bDJfcXVldWUuY2MoMTUxMSldIFN0cmVhbW9uKCk6Cj4g
PiA+IChPVVRQVVRfTVBMQU5FKSBWSURJT0NfU1RSRUFNT04gZmFpbGVkOiBJbnZhbGlkIGFyZ3Vt
ZW50ICgyMikKPiA+ID4gWzU3OTk6NTg4NjowNjE3LzE3MTIyNC44Njc5MDI6VkVSQk9TRTE6djRs
Ml92aWRlb19kZWNvZGVyLmNjKDkzNyldCj4gPiA+IFN0YXJ0U3RyZWFtVjRMMlF1ZXVlKCk6IEZh
aWxlZCB0byBzdHJlYW1vbiBWNEwyIHF1ZXVlLgo+ID4gPiBbNTc5OTo1ODg2OjA2MTcvMTcxMjI0
Ljg2ODAwOTpWRVJCT1NFMTp2NGwyX3ZpZGVvX2RlY29kZXIuY2MoMTM3NyldCj4gPiA+IFNldFN0
YXRlKCk6IEVycm9yIG9jY3VycmVkLCBzdG9wcGluZyBxdWV1ZXMuCj4gPiA+IFs1Nzk5OjU4ODY6
MDYxNy8xNzEyMjQuODY4MTA1OkVSUk9SOnY0bDJfdmlkZW9fZGVjb2Rlci5jYygxMjApXQo+ID4g
PiBTdGFydFN0cmVhbVY0TDJRdWV1ZSBmYWlsZWQgYXQKPiA+ID4gRGVjb2RlQG1lZGlhL2dwdS92
NGwyL3Y0bDJfdmlkZW9fZGVjb2Rlci5jYzo5MTUKPiA+ID4gWzU3OTk6NTg4NjowNjE3LzE3MTIy
NC44NzE4OTg6V0FSTklORzp2NGwyX3ZpZGVvX2RlY29kZXJfYmFja2VuZF9zdGF0ZWxlcwo+ID4g
PiBzLmNjKDEyNildIFRoZXJlIGlzL2FyZSAwIHBlbmRpbmcgQ0FQVFVSRSBxdWV1ZSBidWZmZXJz
IHBlbmRpbmcgZGVxdWV1aW5nLgo+ID4gPiBUaGlzIG1pZ2h0IGJlIGZpbmUgb3IgYSBwcm9ibGVt
IGRlcGVuZGluZyBvbiB0aGUgZGVzdHJ1Y3Rpb24gc2VtYW50aWNzCj4gPiA+IChvZiB0aGVjbGll
bnQgY29kZS4KPiA+ID4gCj4gPiA+IEhlcmUgaXMgdGhlIGNocm9taXVtIGNvZGUgZmFpbGVkIHdo
ZW4gY2FsbGluZyBWSURJT0NfU1RSRUFNT046Cj4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9jaHJv
bWl1bS9jaHJvbWl1bS9ibG9iLzEyNS4wLjY0MjIuNjAvbWVkaWEvZ3B1L3Y0bDIvdjRsCj4gPiA+
IDJfcXVldWUuY2MjTDE1MDgKPiA+ID4gCj4gPiA+IEknbSBydW5uaW5nIGNocm9taXVtIHYxMjUu
MC42NDIyLjYwIGFuZCBJIGNhbiBkZWNvZGUgMTA4MHAgaDI2NCB3aXRoCj4gPiA+IGhhbnRybyBn
MSBkZWNvZGVyIG9uIHJrMzU4OC4KPiA+IAo+ID4gQXJlIHlvdSB1c2luZyBtaW5pZ2JtID8gQmVj
YXVzZSBpZiB5b3UgZG8sIHdlIGRvbid0IGhhdmUgbWluaWdibSBjb2RlIGZvcgo+ID4gdGhpcyBk
cml2ZXIgKGFuZCBoYXZlIG5vIHBsYW4gdG8gZG8gc28sIHNpbmNlIHdlIGRvbid0IGFpbSBmb3Ig
Q2hyb21lT1MKPiA+IHN1cHBvcnQpLgo+ID4gCj4gPiBOaWNvbGFzCj4gPiAKPiA+ID4gQmVzdCBy
ZWdhcmRzLAo+ID4gPiBKaWFuZmVuZwo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
