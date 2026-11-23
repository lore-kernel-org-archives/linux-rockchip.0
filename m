Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940E9606A32E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0jnQDvJ3;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=arm.com header.i=@arm.com header.a=rsa-sha256 header.s=foss header.b=JY/Va0iH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oDS5MJQSHdLfCmf5DIBc8+noJ1jyqEb/f22FA5cM7sY=; b=0jnQDvJ3rvepqyD5wPpzKNk0vd
	a0HM+gFThJwuJvzmVflA8FPvsakNZ2d6rkx6THBAsTSvXOhqp7ZjMzWXA4Bc6oLCPlwLcM1R7e7SP
	50VREo+3plTUtHG5ZnZ210DdVGGaS7Cjs2OC+gwJXYzfnh0GJ6TATna3bb0WNGZJRxQHi6VAjH9Sp
	iyAiq9PJEkt/WfDXb68Ler2cTBgrX8zuYw7rscoxBCiHBqRbUYQWjJwE8F43WNnK6BjPpb+aZLmNe
	bcn9GCPnUrmlo0Rx3SnOcKjNZ+KrH3h+oeI6R4fSI2VdZJ5YaFzttg13CSnSsNnRZ2tCmKsegZ4LY
	VLWArEYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVz3-00000003zKQ-3QLJ;
	Mon, 23 Nov 2026 15:29:33 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVz1-00000003zJM-19P7;
	Mon, 23 Nov 2026 15:29:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 243B3143D;
	Mon, 23 Nov 2026 07:29:27 -0800 (PST)
Received: from [10.57.63.212] (unknown [10.57.63.212])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D9073F632;
	Mon, 23 Nov 2026 07:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1795447770; bh=0xbcGpMrwScqUYzspFMcy4M1QTBeI7Y5dmo8IAPpgqo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JY/Va0iH6nnTm3ZCQ1P7bWW987arEPgcPp0idnNLsxO1wSYW0dvJvX7Thmdqkcx+q
	 bMbePNqN+MqqRt4ewHMzSstT+FzKDVWQibB5NCMakFs22XmyyGWpShlWFPpl2urfsP
	 a1XUe6lSzAB2MI9MvwrAa+scQhKwHN97tfT+Kbxw=
Message-ID: <a9a404e8-66fc-4595-9d14-7ab97cd08583@arm.com>
Date: Mon, 23 Nov 2026 15:29:25 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/panfrost: Gate the RK3399 GPU clock in runtime
 suspend
To: Igor Velkov <iav@iav.lv>, =?UTF-8?Q?Adri=C3=A1n_Larumbe?=
 <adrian.larumbe@collabora.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20261030-panfrost-rk3399-pm-rt-v1-1-e94437159a9d@iav.lv>
 <autNWETrwrHbD2H9@sobremesa>
 <20261104-panfrost-rk3399-pm-rt-larumbe-reply-1@iav.lv>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20261104-panfrost-rk3399-pm-rt-larumbe-reply-1@iav.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_072931_397041_024A3633 
X-CRM114-Status: GOOD (  32.27  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMDQvMTEvMjAyNiAxOTo1OSwgSWdvciBWZWxrb3Ygd3JvdGU6Cj4gSGkgQWRyacOhbiwKPiAK
PiBPbiAwNC4xMS4yMDI2LCBBZHJpw6FuIExhcnVtYmUgd3JvdGU6Cj4+PiBPbiBST0NLIFBpIDRB
IHJlc3RvcmUgZnJvbSBoaWJlcm5hdGlvbiBoYW5ncyBpbiBnZW5wZF9yZXN0b3JlX25vaXJxKCkK
Pj4+IG9mIHRoZSBHUFUgd2hpbGUgcGFuZnJvc3QgaXMgYm91bmQuIFdpdGggdGhlIGNsb2NrIGdh
dGVkIGluIHJ1bnRpbWUKPj4+IHN1c3BlbmQsIGFzIG9uIHRoZSBBbGx3aW5uZXIgSDYxNiBhbmQg
dGhlIFJlbmVzYXMgcGFydHMsIGl0IHJlc3RvcmVzLgo+Pgo+PiBJIGZpbmQgdGhlIHdvcmRpbmcg
aW4gdGhlIHByZWNlZGluZyBwYXJhZ3JhcGggYSBiaXQgY29uZnVzaW5nIC4gV291bGQKPj4geW91
IG1pbmQgY2xhcmlmeWluZyB3aGF0ICdwYXJ0cycgbWVhbnMgaGVyZT8gSSBndWVzcyB5b3UgcmVm
ZXIgdG8KPj4gc3BlY2lmaWMgU29Dcy4KPiAKPiBZZXMsIFNvQ3M6IGFsbHdpbm5lcixzdW41MGkt
aDYxNi1tYWxpLCByZW5lc2FzLHI5YTA4ZzA0Ni1tYWxpIGFuZAo+IHJlbmVzYXMscjlhMDlnMDQ3
LW1hbGkgYWxyZWFkeSB1c2UgZGVmYXVsdF9wbV9ydF9kYXRhLiB2MiB3aWxsIG5hbWUKPiB0aGVt
Lgo+IAo+PiBBbHNvLCBJIHdvbmRlciB3aHkgbm90IGRpc2FibGluZyB0aGUgY2xvY2tzIHdvdWxk
IGZvcmVzdGFsbCBjb21pbmcgYmFjawo+PiBmcm9tIGEgcG93ZXIgc3VzcGVuc2lvbiBzdGF0ZS4g
SGF2ZSB5b3UgcmFpc2VkIHRoaXMgbWF0dGVyIHRvIHRoZQo+PiBtYWludGFpbmVycyBvZiB0aGUg
UkszMzk5IFNvQyBzdWJzeXN0ZW0/Cj4gCj4gVGhlIGtlcm5lbCB0aGF0IHJlYWRzIHRoZSBpbWFn
ZSBuZXZlciBiaW5kcyBwYW5mcm9zdCwgc28gYWZ0ZXIKPiBjbGtfZGlzYWJsZV91bnVzZWQoKSBh
Y2xrX2dwdSBzdGF5cyBnYXRlZC4gVGhlIHJlc3RvcmVkIGltYWdlIHN0aWxsIGhhcwo+IGl0IGVu
YWJsZWQgaW4gc29mdHdhcmUgKGVuYWJsZSBjb3VudCAxIHNpbmNlIHByb2JlKSwgc28gcG93ZXJp
bmcgdGhlIEdQVQo+IGRvbWFpbiBiYWNrIG9uLCB3aG9zZSBjbG9ja3MgaW5jbHVkZSBhY2xrX2dw
dSwgb25seSBidW1wcyB0aGUgY291bnQsIGFuZAo+IHRoZSBRb1Mgd3JpdGVzIHRoYXQgZm9sbG93
IGluIHJvY2tjaGlwX3BkX3Bvd2VyKCkgZ28gdG8gYSBnYXRlZCBibG9jawo+IGFuZCBoYW5nLiBJ
IHRyYWNlZCB0aGlzIGZvciBya3ZkZWMgWzFdOyBmb3IgdGhlIEdQVSBJIHNlZSB0aGUgaGFuZyBh
dAo+IHRoZSBzYW1lIHNwb3QsIGdlbnBkX3Jlc3RvcmVfbm9pcnEoKSwgYW5kIGdhdGluZyBpbiBy
dW50aW1lIHN1c3BlbmQKPiByZW1vdmVzIGl0LiBJIGhhdmVuJ3QgcmFpc2VkIGl0IHNlcGFyYXRl
bHk7IEhlaWtvIGlzIG9uIFRvLgo+IAo+PiBXb3VsZCB5b3UgYWxzbyBtaW5kIGRlc2NyaWJpbmcg
d2hhdCB5b3UgZGlkIHRvIHJlcHJvZHVjZSB0aGlzCj4+IHJlc3VtZS1mcm9tLXN1c3BlbmQgaXNz
dWU/IExhdGVseSB3ZSd2ZSBiZWVuIGdldHRpbmcgc29tZSBmaXhlcyBmb3IKPj4gc2ltaWxhciBT
b0MgaXNzdWVzIGFuZCBJIHdvbmRlciB3aGV0aGVyIG1pbmUgYWxzbyBoYXMgaXQuCj4gCj4gSXQg
aXMgaGliZXJuYXRpb24gKHJlc3RvcmUgZnJvbSBkaXNrKSwgbm90IHN1c3BlbmQgdG8gUkFNLiBS
T0NLIFBpIDRBLAo+IGRybS1taXNjLW5leHQgMzNlZDI2MjM1ZGI5IHBsdXMgWzFdLCBwYW5mcm9z
dCBhcyBhIG1vZHVsZSwgYm91bmQsIEdQVQo+IGlkbGUsIHN3YXAgZmlsZSB3aXRoIHJlc3VtZT0g
YW5kIHJlc3VtZV9vZmZzZXQ9OiBzeXN0ZW1jdGwgaGliZXJuYXRlLAo+IHBvd2VyIG9mZiBhbmQg
b24uIFdpdGhvdXQgdGhlIHBhdGNoIHJlc3RvcmUgaGFuZ3MgYXQgInBhbmZyb3N0Cj4gZmY5YTAw
MDAuZ3B1OiBjYWxsaW5nIGdlbnBkX3Jlc3RvcmVfbm9pcnEiIDIgb2YgMiwgd2l0aCBpdCByZXN0
b3Jlcwo+IDYgb2YgNi4gQSBxdWljayBjaGVjayBvbiBhbm90aGVyIGJvYXJkOiB3aXRoIHBhbmZy
b3N0IGJvdW5kIGFuZCB0aGUgR1BVCj4gaWRsZSwgaXRzIGNvcmUgY2xvY2sga2VlcHMgZW5hYmxl
IGNvdW50IDEgaW4gY2xrX3N1bW1hcnkuCj4gCj4+IElmIHRoaXMgcGF0Y2ggZGVwZW5kcyBvbiBh
bm90aGVyIGZpeCBiZWluZyBtZXJnZWQgZmlyc3QsIEkgdGhpbmsgaXQncwo+PiBiZXN0IHlvdSBk
ZWxheSBzZW5kaW5nIGEgdjIgdW50aWwgaXQncyBiZWVuIGNvbW1pdHRlZCB0byBpdHMgcmVsZXZh
bnQKPj4gc3Vic3lzdGVtIHRyZWUgYW5kIGNoYW5nZXMgcHVsbGVkIGludG8gZHJtLW1pc2MtbmV4
dC4KPiAKPiBJdCBhcHBsaWVzIGFuZCBidWlsZHMgd2l0aG91dCBbMV07IFsxXSBvbmx5IGdldHMg
dGhpcyBib2FyZCB0aHJvdWdoCj4gcmVzdG9yZSB1cCB0byB0aGUgR1BVLiBbMV0gZ29lcyB0aHJv
dWdoIGxpbnV4LW1lZGlhLCBzbyBJJ2QgcmF0aGVyIG5vdAo+IHRpZSB2MiB0byBpdCwgYnV0IGZp
bmUgZWl0aGVyIHdheS4KPiAKPj4gSSdtIG5vdCBlbnRpcmVseSBzdXJlIGFib3V0IHdoYXQgcGF0
Y2ggc3VibWlzc2lvbiBndWlkZWxpbmVzIHNheSBhYm91dAo+PiB0ZXN0aW5nIGluZm9ybWF0aW9u
LCBidXQgbm9ybWFsbHkgY29tbWl0IHRyYWlsZXJzIG11c3QgY29tZSBhYm91dAo+PiBsYXN0LiBX
b3VsZCB5b3UgbWluZCB0aGVuIG1vdmluZyB0aGlzIHRvIHJpZ2h0IGJlZm9yZSB0aGUgUy1vLWI/
Cj4gCj4gVGhlIHRlc3Qgbm90ZXMgYXJlIGJlbG93IHRoZSAiLS0tIiBvbiBwdXJwb3NlLCBzbyB0
aGV5IHN0YXkgb3V0IG9mIHRoZQo+IGNvbW1pdC4KPiAKPj4+ICsJeyAuY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazMzOTktbWFsaSIsIC5kYXRhID0gJmRlZmF1bHRfcG1fcnRfZGF0YSB9LAo+Pgo+
PiBZb3UncmUgZWZmZWN0aXZlbHkgYWRkaW5nIHN1cHBvcnQgdG8gYSB3aG9sZSBuZXcgU29DLiBU
aGlzIG1hZGUgbWUKPj4gd29uZGVyLCBhcmUgd2Ugc3VyZSBzdXNwZW5zaW9uIHJlc3VtcHRpb24g
bm90IHdvcmtpbmcgaXMgb25seSBiZWNhdXNlIG9mCj4+IEdQVV9QTV9SVD8gU2hvdWxkbid0IHdl
IGtub3cgZmlyc3QgYWJvdXQgaXRzIHN1cHBsaWVzIGFuZCBwb3dlciBkb21haW5zLAo+PiBhbmQg
YW55IHBvdGVudGlhbCBHUFUgcXVpcmtzPyBJIHRoaW5rIHRoaXMgZ29lcyBiZXlvbmQgbXkga25v
d2xlZGdlLCBzbwo+PiBtYXliZSBTdGV2ZW4gUHJpY2UgY2FuIHBpdGNoIGluLgo+IAo+IFRoZSBu
b2RlIGFscmVhZHkgY2FycmllcyAicm9ja2NoaXAscmszMzk5LW1hbGkiLCAiYXJtLG1hbGktdDg2
MCIgYW5kCj4gYmluZHMgdGhyb3VnaCB0aGUgZmFsbGJhY2sgdG9kYXkuIGRlZmF1bHRfcG1fcnRf
ZGF0YSBkaWZmZXJzIGZyb20KPiBkZWZhdWx0X2RhdGEgb25seSBpbiBHUFVfUE1fUlQ7IHN1cHBs
aWVzIGFuZCB0aGUgcG93ZXIgZG9tYWluIHN0YXkgYXMKPiB0aGV5IGFyZS4gVGhlIFJLMzM5OSBH
UFUgbm9kZSBoYXMgbm8gYnVzIGNsb2NrcyBhbmQgbm8gcmVzZXRzLCBzbwo+IEdQVV9QTV9SVCBj
aGFuZ2VzIG9ubHkgYWNsa19ncHUgaGVyZS4gU3RldmVuJ3MgdmlldyBpcyB3ZWxjb21lLgoKU29y
cnkgZm9yIHRoZSBzbG93IHJlc3BvbnNlLCBJJ3ZlIGdvdCBxdWl0ZSBiZWhpbmQgb24gbXkgZW1h
aWxzLgoKQXMgeW91IHNheSB0aGUgcGxhdGZvcm0gd2lsbCBwcmV2aW91c2x5IGhhdmUgYmVlbiBh
YmxlIHRvIHVzZSB0aGUKZmFsbGJhY2sgY29tcGF0aWJsZS4gU28gdGhpcyBpcyBzdWNoIG9wdGlu
ZyBpbiB0aGlzIHBsYXRmb3JtIHRvIHVzZQpHUFVfUE1fUlQuIElmIHdlJ3ZlIGdvdCBhIHJlcG9y
dCBvZiB0aGlzIHdvcmtpbmcgKHRoYW5rcyBmb3IgSWdvcikgdGhlbgpJIGRvbid0IHNlZSB3aHkg
d2Ugd291bGRuJ3Qgd2FudCB0byBlbmFibGUgaXQuIEJhc2ljYWxseSB3ZSd2ZSB0YWtlbiB0aGUK
YXBwcm9hY2ggb2YgYmVpbmcgY29uc2VydmF0aXZlIHVudGlsIHdlIHNlZSB0aGF0IEdQVV9QTV9S
VCBkb2Vzbid0IGNhdXNlCnByb2JsZW1zLgoKSSBoYXZlIHRvIGFkbWl0IGhpYmVybmF0aW9uIGlz
bid0IHNvbWV0aGluZyBJJ3ZlIHRlc3RlZCwgc28gaXQncwpwb3NzaWJsZSB3ZSBuZWVkIHRvIGxv
b2sgYXQgZml4aW5nIHNvbWV0aGluZyByZWxhdGVkIHRvIHRoYXQuIEJ1dCBpdCdzCmFsc28gcXVp
dGUgbGlrZWx5IHRoYXQgaGliZXJuYXRpb24gaXMgbW9yZSBmdW5kYW1lbnRhbGx5IGJyb2tlbiBv
bgpwbGF0Zm9ybSB0aGF0IGRvbid0IGhhdmUgR1BVX1BNX1JULCBzbyBpdCBtaWdodCBub3QgYmUg
c29tZXRoaW5nIHdlIGNhbgp1c2VmdWxseSBmaXguCgpPdGhlciB0aGFuIHRoZSBzb21ld2hhdCBj
b25mdXNpbmcgY29tbWl0IG1lc3NhZ2UgKGUuZy4gYSBzdWJqZWN0IG9mCiJFbmFibGUgR1BVX1BN
X1JUIGZvciBSSzMzOTkiIHdvdWxkIGJlIGNsZWFyZXIpLCB0aGlzIGlzIGZpbmU6CgpSZXZpZXdl
ZC1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4KClRoYW5rcywKU3RldmUK
Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjEwMzAtcmt2ZGVjLXJ1bnRpbWUt
cG0tY2xvY2tzLXYyLTEtOGZmNTEwYTIzMWRlQGlhdi5sdgo+IAo+IC0tCj4gSWdvciBWZWxrb3YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
