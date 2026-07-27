Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D78CC531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 17:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dJdjblP2ovSWUunrqWPi9CNHYQOxEgLxzAgLoHpc5U=; b=HhoJNfmMa/Bgjn
	oK64FOdW6/Vx4Cc8+Efc5plDKp/+sEy+Opsh/R9KV9yhUB/s0sN0x9pxI05blxi1K/pY+jmiKDWdE
	NsNvFh0oYH74dgXtAO/YGPZfelS/QCKJoyXduQhla5AMDSYgUrKx5xn68HOqyY9l7SI0zzmo4T7mA
	D8M0IUCbJIuQOjbXGBVIGVnQnLk/WIc3GcWlujqNB/GGLPX62qdOiPAx40DbaxJ1xtdIInxTQgjSj
	mLIeUMsLXbj2Bedy7MWLlvQKBg+e/yM/xFilSoeVz50qXykzN0nA1XzSl6VvpUFr3hVhsXWIybewU
	B448c5YpfRwK4Cm4GKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOo6-00000003UCv-0UcB;
	Mon, 27 Jul 2026 17:08:02 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOo3-00000003UBv-0OxN
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 17:08:00 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-81ef8adf7a7so1139207b3.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 10:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785172077; cv=none;
        d=google.com; s=arc-20260327;
        b=XIxrZzDO9Zl86wNmlxJWaz59YOcn6+2AeWRTc3t4E81Dat3haJtrZwy2BcnJqyc1CC
         JBp/Ufx4d9urEJadxAW30/euv9kNq7O9TF+L7ZIPbaL3oWVKyamxYuzi2jSn2XGCVpSe
         +eQUDayLJ3dwqDu8zObSHTjIWBkA+jhHYQS+FTLYeNvZr9anbtZIZPoVZGxSY8QgR8ME
         TjmX1mU1T8X5mRHJ+LWPAsbrb3dLOeT9ygeb+Z6TE15S4RGa2QYAcjd2eCSk662IS62c
         nJa5grgNcsAT8QOgzg/vFpOOoEIUHMrF88PVguY//+w9qLVV9KpCJPlLO5Y/mAFNyMlo
         fyvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=c21ngjJ5XlclNkcsiWl5J6SQ+KBmH0ZVxdFOlgqSkMo=;
        fh=8g0mNX1M8RO8irbYHQDpKYnlPib+jobWa0eYvMGESxg=;
        b=K/Vhn7S/qQ8ZONcuyppjvWTUDFJjogHDcdsm4u8pNCx2g4kEfjsoPMD+T2W4MSTNew
         wfo5M6VF3otLIvV2cIYJl1OvIshWtu32bmCxxm9ZCVXUZY0bkQmxS4Dm80Fp3D6ik5i/
         xdmVlzJ4f02jnkENXg5yRP4Q4JMpBAtvzng+yQavAP+zl1hldDMcj0SVOiZOF2iHXJrD
         FJ/ZaR+jOm7JR29jPwrwxSNxfl5AG8CpwJBG3YxnOaIKT3h3zENfhjCD0vw0S8Fr9Jk6
         gbuh3/PFVsw4G6SQfeXEfTobDH13w88euVY2038PfB4OLOGRT6LwVIM8dcAEXeNjRveW
         +wSQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785172077; x=1785776877; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=c21ngjJ5XlclNkcsiWl5J6SQ+KBmH0ZVxdFOlgqSkMo=;
        b=aIq9MdK1iTfGKDTPIq/OKscmD1w+VCFQ/25rQ5YTDTlK0FraupL+2K0hLaBR1l5FGg
         WtxFIfH0J5mherEEJWOowjgXP0ax59JEy1SlUvkUyBGfY+5yfFSx2lt9SsFsnvSUGH2W
         Q3cWQdFwXetCpjBJyf6V8yhGHAGnEIUmat+PvMEJk+324UKJXBmm/KFq9Ha538LijK7v
         vWyyDCDXg9Rh9DeLY/APCLMnLPrdbBNsxOmqFlXnb9Wtm2QHppqnf9sptlfP2cFJXtiY
         +zzxAPl1bxYAmFYyJtw+KnMuQPJNYb/y66xv9DyIJE6tKeH0URP+XTb48Txg+4IhLyho
         qBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785172077; x=1785776877;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c21ngjJ5XlclNkcsiWl5J6SQ+KBmH0ZVxdFOlgqSkMo=;
        b=N3bzeQESZwxaIpxjoKHfoKtM6eBXbPkflEOuzGjT9Ie1dlflLC36KJbv8w5gnkUyj6
         f5nr604N0s+gdCoERwxUvKNNmDwbChOEdqoNVMsFEauKhR08kUTfZJm4vwRHMqQrNT52
         t78LIMAqMQoQeJA+QZktN1dzS+gIwL5lMiGQIhGb0qf4G0rKQBUf49/M6qZPu0Gv+D3P
         5uTuPqWDYhhKAerSs/1DDrfGyf+MzPQOuPljE8rxltprHqU+dEJy/0b9kBeDkRRKSERs
         q5Xb9FcV4EPIL+GtIRRXq1QKQvCoM6AK2hfqNz9wAsrcTudNcU0TJAZtmpBDJpdv96+j
         b40A==
X-Forwarded-Encrypted: i=1; AHgh+RrskRP0KzK4hZ+8Z58fAU7FaUqAgbSY8zfqm26ZzYzPXv+H1nTuhBRlUrpTqH3O25vpyBWSy7Y6Kmiglf3/cQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWqckUwehIT05bI8Z9hIdmeURRdJR/POpL68xddON+/WomUIfF
	XRSJ/rH4O8Hbe5PNjpZbgEjuKXuY/No9aqAiEjQ7tT6myDaQ/POFcwstboc5OO45+gAziHj319k
	qUwD+UQZQZ9tekxWTjmspA6dCisV8/78=
X-Gm-Gg: AR+sD10arGJFKUx6edEXedTdykYtscw40xpzFrVD3XBCKe7zyr688s0UvhzGOW++1Vq
	HhCwi24MKeVnrwjg1r3sv+SOv1YpsnSbAZJa3KnCmyAL6sp6+GETWzna6uHmMnRxbVHP//Ne25v
	rk5AZdFgfcTAJDv0tZQroVBxUFh7fAY11sKTwDYhPvjsEmAOWhQ88c82vETKVXqqicNShDkKD5+
	BUE8oMq3T052/oupOyir5sv4aCKJmmr0zBHMrpSnzYCo8Ggg7XKQ6/lFCNdAoDWJUnQdOtyey9B
	cs0A8/nSjPQPFAAEVvTt
X-Received: by 2002:a05:690c:c508:b0:81d:a82a:a4fa with SMTP id
 00721157ae682-81f918e48e9mr3545747b3.5.1785172077323; Mon, 27 Jul 2026
 10:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
 <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-4-180fb2d1f10c@gmail.com> <cb8XVJu6RUmEjMZpl7NA1g@collabora.com>
In-Reply-To: <cb8XVJu6RUmEjMZpl7NA1g@collabora.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Mon, 27 Jul 2026 19:07:46 +0200
X-Gm-Features: AUfX_mwAp38CvxOzFNFIy663VRohFPhaabl-gVyS3Hkri8cjdi-61b1oibiQvGg
Message-ID: <CAEWPSH7rQv-yZ+dL+mZi6Mt3rj6gUZhp3r7_Gpjy8=1OArqwUA@mail.gmail.com>
Subject: Re: [PATCH 4/4] media: rkvdec: align bytesperline to 64 bytes in rkvdec_fill_decoded_pixfmt()
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Francesco Saverio Pavone <pavone.lawyer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_100759_148059_FF93EABC 
X-CRM114-Status: GOOD (  23.43  )
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

SGkKCj4gVGhpcyBzaG91bGRuJ3QgYmUgbmVlZGVkLiBBcyB5b3Ugc2V0IHN0ZXBfd2lkdGggdG8g
NjQsCj4gdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCkgc2hvdWxkIGFscmVhZHkgZG8g
dGhlIGFsaWdubWVudC4KPiBEbyB5b3UgaGF2ZSBtb3JlIGNvbnRleHQgYXMgdG8gd2hlbiB3aWR0
aCBpcyBub3QgYWxpZ25lZCA/CgpZb3UncmUgcmlnaHQgdGhhdCB0aGUgd2lkdGggaXMgYWxpZ25l
ZCAtLSBzdGVwX3dpZHRoID0gNjQgaGFuZGxlcyB0aGF0LgpUaGlzIGlzbid0IHRoZSB3aWR0aCB0
aG91Z2gsIGl0J3MgdGhlIHN0cmlkZSwgYW5kIGl0IG9ubHkgYml0ZXMgb24gdGhlCjEwLWJpdCAo
UHJvZmlsZSAyKSBjYXB0dXJlIGZvcm1hdC4KCkZvciA4LWJpdCBOVjEyIHRoZSBsdW1hIHN0cmlk
ZSBlcXVhbHMgdGhlIHdpZHRoLCBzbyBvbmNlIHRoZSB3aWR0aCBpcwo2NC1hbGlnbmVkIHRoZSBz
dHJpZGUgaXMgdG9vIGFuZCB0aGlzIGJsb2NrIGlzIGEgbm8tb3AuCgpUaGUgMTAtYml0IGNhcHR1
cmUgZm9ybWF0IGlzIE5WMTUsIHdob3NlIGx1bWEgc3RyaWRlIGlzIHdpZHRoICogNSAvIDQKKGJw
cCB7NSwgMTB9LCBicHBfZGl2IHs0LCA0fSBpbiB2NGwyLWNvbW1vbi5jKS4gVGhhdCBpc24ndCBh
IG11bHRpcGxlCm9mIDY0IGV2ZW4gd2hlbiB0aGUgd2lkdGggaXM6IGEgMTkyMC13aWRlIFByb2Zp
bGUgMiBmcmFtZSBnaXZlcyBhCjI0MDAtYnl0ZSBzdHJpZGUsIHdoaWxlIHRoZSBWRFBVMzgxIG5l
ZWRzIHRoZSBsdW1hIHN0cmlkZSA2NC1ieXRlCmFsaWduZWQgKDI0MzIpLiB2NGwyX2FwcGx5X2Zy
bXNpemVfY29uc3RyYWludHMoKSBvbmx5IHJvdW5kcyB0aGUgd2lkdGgKYW5kIGhlaWdodCwgYW5k
IHY0bDJfZmlsbF9waXhmbXRfbXAoKSBmaWxscyB0aGUgc3RyaWRlIHdpdGggYWxpZ25tZW50IDEs
CnNvIE5WMTUgY29tZXMgb3V0IHVuYWxpZ25lZCBhbmQgdGhlIGRlY29kZWQgZnJhbWUgaXMgY29y
cnVwdGVkIHdpdGhvdXQKdGhpcy4gSSBjYW4gc2hvdyB0aGUgYmVmb3JlL2FmdGVyIG9uIGEgMTAt
Yml0IHZlY3RvciBpZiB0aGF0J3MgdXNlZnVsLgoKSWYgeW91J2QgcmF0aGVyIGV4cHJlc3MgaXQg
dGhyb3VnaCB0aGUgZnJhbWV3b3JrIHRoYW4gd2l0aCBhIG1hbnVhbApBTElHTigpIGhlcmUsIHY0
bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25lZChwaXhmbXQsIHBpeGVsZm9ybWF0LCB3aWR0aCwKaGVp
Z2h0LCA2NCkgcHJvZHVjZXMgdGhlIHNhbWUgYnl0ZXNwZXJsaW5lIGFuZCBzaXplaW1hZ2UgLS0g
aGFwcHkgdG8Kc3dpdGNoIHRvIHRoYXQgaW4gdjIuCgpJZ29yCgoKT24gTW9uLCBKdWwgMjcsIDIw
MjYgYXQgNTo1OOKAr1BNIERldGxldiBDYXNhbm92YQo8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9y
YS5jb20+IHdyb3RlOgo+Cj4gSGkgIQo+Cj4gT24gU3VuZGF5LCAyNiBKdWx5IDIwMjYgMTY6MjU6
MzcgRURUIFZlbmthdGEgQXRjaHV0YSBCaGVlbWVzd2FyYSBTYXJtYSBEYXJiaGEKPiB3cm90ZToK
PiA+IEZyb206IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4KPiA+Cj4gPiBF
bnN1cmUgYnl0ZXNwZXJsaW5lIGlzIDY0LWJ5dGUgYWxpZ25lZCBhbmQgc2NhbGUgc2l6ZWltYWdl
IGFjY29yZGluZ2x5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IElnb3IgUGF1bm92aWMgPHJveWFs
bmV0MDI2QGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEZyYW5jZXNjbyBTYXZlcmlvIFBh
dm9uZSA8cGF2b25lLmxhd3llckBnbWFpbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWZW5rYXRh
IEF0Y2h1dGEgQmhlZW1lc3dhcmEgU2FybWEgRGFyYmhhCj4gPiA8dmRhcmJoYTA0NzNAZ21haWwu
Y29tPiAtLS0KPiA+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3Zk
ZWMuYyB8IDEyICsrKysrKysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYwo+ID4gYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYyBpbmRleAo+ID4gNDM2YmI0NjBmMDRlLi42YWI2
NTMwYjFjYzkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JrdmRlYy9ya3ZkZWMuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya3ZkZWMvcmt2ZGVjLmMKPiA+IEBAIC0xMDIsMTIgKzEwMiwyMCBAQCBzdGF0aWMgdm9pZCBy
a3ZkZWNfZmlsbF9kZWNvZGVkX3BpeGZtdChzdHJ1Y3QKPiA+IHJrdmRlY19jdHggKmN0eCwgc3Ry
dWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeF9tcCkKPiA+ICB7Cj4gPiAgICAgICBjb25z
dCBzdHJ1Y3Qgcmt2ZGVjX3ZhcmlhbnQgKnZhcmlhbnQgPSBjdHgtPmRldi0+dmFyaWFudDsKPiA+
ICsgICAgIHN0cnVjdCB2NGwyX3BsYW5lX3BpeF9mb3JtYXQgKnBsYW5lID0gJnBpeF9tcC0+cGxh
bmVfZm10WzBdOwo+ID4gKyAgICAgdTMyIGFsaWduZWRfYnBsOwo+ID4KPiA+ICAgICAgIHY0bDJf
ZmlsbF9waXhmbXRfbXAocGl4X21wLCBwaXhfbXAtPnBpeGVsZm9ybWF0LCBwaXhfbXAtPndpZHRo
LAo+ID4gcGl4X21wLT5oZWlnaHQpOwo+ID4KPiA+IC0gICAgIGN0eC0+Y29sbXZfb2Zmc2V0ID0g
cGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlOwo+ID4gKyAgICAgLyogZW5zdXJlIGJwbCBp
cyA2NCBieXRlIGFsaWduZWQgYW5kIHNjYWxlIHNpemVpbWFnZSBhY2NvcmRpbmdseS4KPiAqLwo+
ID4gKyAgICAgYWxpZ25lZF9icGwgPSBBTElHTihwbGFuZS0+Ynl0ZXNwZXJsaW5lLCA2NCk7Cj4g
PiArICAgICBpZiAoYWxpZ25lZF9icGwgIT0gcGxhbmUtPmJ5dGVzcGVybGluZSkgewo+ID4gKyAg
ICAgICAgICAgICBwbGFuZS0+c2l6ZWltYWdlID0gcGxhbmUtPnNpemVpbWFnZSAvIHBsYW5lLQo+
ID5ieXRlc3BlcmxpbmUgKiBhbGlnbmVkX2JwbDsKPiA+ICsgICAgICAgICAgICAgcGxhbmUtPmJ5
dGVzcGVybGluZSA9IGFsaWduZWRfYnBsOwo+ID4gKyAgICAgfQo+Cj4gVGhpcyBzaG91bGRuJ3Qg
YmUgbmVlZGVkLiBBcyB5b3Ugc2V0IHN0ZXBfd2lkdGggdG8gNjQsCj4gdjRsMl9hcHBseV9mcm1z
aXplX2NvbnN0cmFpbnRzKCkgc2hvdWxkIGFscmVhZHkgZG8gdGhlIGFsaWdubWVudC4KPgo+IERv
IHlvdSBoYXZlIG1vcmUgY29udGV4dCBhcyB0byB3aGVuIHdpZHRoIGlzIG5vdCBhbGlnbmVkID8K
Pgo+ID4KPiA+IC0gICAgIHBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPSB2YXJpYW50
LT5vcHMtPmNvbG12X3NpemUocGl4X21wLQo+ID53aWR0aCwKPiA+IHBpeF9tcC0+aGVpZ2h0KTsg
KyAgICBjdHgtPmNvbG12X29mZnNldCA9IHBsYW5lLT5zaXplaW1hZ2U7Cj4gPiArICAgICBwbGFu
ZS0+c2l6ZWltYWdlICs9IHZhcmlhbnQtPm9wcy0+Y29sbXZfc2l6ZShwaXhfbXAtPndpZHRoLAo+
ID4gcGl4X21wLT5oZWlnaHQpOyB9Cj4gPgo+ID4gIHN0YXRpYyB2b2lkIHJrdmRlY19yZXNldF9m
bXQoc3RydWN0IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0bDJfZm9ybWF0ICpmLAo+Cj4gUmVn
YXJkcywKPiBEZXRsZXYuCj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
