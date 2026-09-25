Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66BB1C98328
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 15:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePm0LlEIdZOfDVICVdr0QA4E6xSioEYmWgsAGYvgX5c=; b=kOc+9ND/I9bL8n
	6YjfTw1x4L6XNz+FOqdAOUx0vrltxEnZgVLx32PX3k5UJxLEmEKbcxQSI+fzUDoHOcFWti8KPXgZs
	SqsGIilDgOEFIGw3+5LCpdzUprC9pS/o6nxBR6C/rwqH0MZmtaJG0WQsX1uilOC6s6lA4W9BXieHG
	/6VngaTlWaT5vYdQPCUQ8fUEVMh8kiyx+ZOgmEr+yMD97JHs2Gq+UI8towetsYGW4qrCHnDqhmQ+e
	ZpU0V0ga5fFsUtUG0yHzgtrJGlU2JcUOfCVrpLcNdws5DpPAs/YFE9AAxH54j62XuwCInK8kuAFBm
	DEXJWYTg0ZSRxWkKfcnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA84a-0000000DpdM-2jSs;
	Fri, 25 Sep 2026 15:42:52 +0000
Received: from mail-ej2-x0f.google.com ([2a00:1450:4864:34::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA84X-0000000DpcG-1j3A
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 15:42:50 +0000
Received: by mail-ej2-x0f.google.com with SMTP id a640c23a62f3a-c2af9270c53so44919666b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 08:42:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790350967; cv=none;
        d=google.com; s=arc-20260327;
        b=Hy3rO8XL441Xqa7zYu1cxP5YSzxCuu0nP6tEw8dgUphsfXekwaqb8SEJHCiIzGJd8P
         A72nNddqrMI8lkmoAyVE3/aktgIVNhsjDiTiY1oAbcMX4rClSsrziBL+uEUICi2TgZbj
         GZFwmmX9bmTiA4Ks4IdIB4eKU4+1U7tZlS3ZRrront75oNyEXdsrTVSIxWMAr/BJNs/R
         rkZ7d1N8f7ejddELwCztgCC/6Gl4PxtFU7G7+YnALib5TS2CpvjLsja3hhK4PA+M/xem
         JJUr2Pu+kxEe8d9Wx19mcKZffBogiHRfvmmMI9LBHrx55TLpyicTdRqirMfST02sw7cX
         ssmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YdJbeVGqh9AgSmmj5nG5sf7cECD5ZVbeKNl4YktWcOI=;
        fh=jJvGInAp1gEispD0MwNZ0S9KX6Co3s1ce7KVz5uB+7I=;
        b=jGcld7FgokPizczMWgj3fneqtMGJMVtuzZr1mSEI0sJw5QmeOPzvLvfmQR3rBIA+3y
         /bXBzkPqk4mLDR6iIb/YtGHa4TJlt8PAx6fYVVcJFzGRuQ6uEE+QO7cQqmU9dkKVtQEh
         CCaxpsmM1JoiBJGkjzWbjJ5EHnE/RuOrrBbKMo4pKT4fDHJGoRfon634rnryFYdDMFCi
         2KGN9XXpFrsXeVH0VE5jtt4PASn7i6yxSW4KitZ0rphuKM6WkdhaIX146zzyP1hRsfYz
         aLdPiFi09sWDIif+m/hevj15Ms8WN/Atyw2CIqgRiLHGtZC/X9QKtUNHctVB3Czgs6EY
         mUgw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790350967; x=1790955767; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YdJbeVGqh9AgSmmj5nG5sf7cECD5ZVbeKNl4YktWcOI=;
        b=aFVSRYWrbRbP5it/+8KBwrswLFn5W/c5P3T3KR6RJ2FzHy8cNONFM89Vk9tF4fgmph
         7QrPUGyyuK3jzuqgeU5F8+jBiCs76jrwJfed6GQc7wfPbLEXM52v7cjbes1Y8Z1pgcAG
         vt7sl4dAs1YIwcr6WTCpcOLvPFVQcVWAoVEvBtvzoLdfL6xMlDLD4nOfYKUvVIeu02x4
         bnYD2hp5H6a08qenzt3aNTt8QAnOXkoWs31EIlK4jevhHvgmHqfNPBE0WiVr28KIJpIm
         vFkQ2d0DovvCiR7VXpiwkGwURxauHzQvcLiNm7hI5bFkccdLXF0ERIIAxGagGJ6H98Pm
         cApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790350967; x=1790955767;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YdJbeVGqh9AgSmmj5nG5sf7cECD5ZVbeKNl4YktWcOI=;
        b=XtKisR1kYaW5JWthAH8byFUuRLSd+X+FWNbr9teuMrwSy7MphLjiYYIfhDDp+0QA+N
         /Cp/tXRcaY+w6dVBbuYDrJy0jHnuMYCnyLVU6lN4qxGsSwQFKVck5yjtzFRzyhmn9BGu
         21kzwN731FOOc3wu951TXLDLbRm/ci0ioBIXX164c9NwCV1+j2qZXEGcsGNdIwKBvI4y
         NKuQrVD7+1exYItnvzEK5mkVxcHdqWx0Dw1IdMOLHAe2+6bWwONfa/brAn1yquyIRdGf
         lxrvz0u11530j7H3mDK5b6w1dc5xX7p8xcCWEyTH+0CMjM/ah0EoiUybK1oCHkltxJxZ
         zMLg==
X-Forwarded-Encrypted: i=1; AKwUvBzipgTTwfLG2cfGbgYRUnNj3mpMKiot6SahKKEj8BglTvmHwXk4yYb61/zhsdu824Lx0NeJFcm4A1TZefunoA==@lists.infradead.org
X-Gm-Message-State: AFuF++nuVWMbnpx8+aEOIIizoPfFSYxWxMKk9WqAgSU/fc2oT1KoyLm1
	i7ezRsHnC1qNmnnORVowfsmkvgWV3M3O66mPwczF7Mb/tKcMMukFrWKC/l6mPOiPCfRIW+qxnu6
	zwOJn7+qCU3j0h7siXeleRhEMwi7iJaNeRxIpLuTWjg==
X-Gm-Gg: AYBFou0cPE4iAK0mIjkHFZ5/oDLzmmtnkwj0+Ooqmvt2fC2eBxX/TPQssAO9DQfHryK
	lZu1Yc7kAxqLVeCeZnQipwoN2Rqalj9FNhtLV+eAX1IQ6htPxd6grE51G5ezWCqpl7Wm7gIPg2n
	4eQsktpdSQuvU3mlU8Yh+qmhmTcKu/oGFiv0eyFd3g7F46s2PdNS03zvNjnO0CcBwaAdg49lSsI
	OQFUIo9mPzYYuJt/gBhDXb8mb/FAWCWYxtqLjfW9KVJsk1BXO3Po634oi2APvFtuDUDT1mEMCMb
	l0eSRG6jB7aE1oqULOelzwU73xcAgMveyTsahgvV7FCK7VdLZdYJTOa9
X-Received: by 2002:a17:907:c308:b0:c28:ec7c:27ae with SMTP id
 a640c23a62f3a-c2ac5396f65mr492269466b.25.1790350967019; Fri, 25 Sep 2026
 08:42:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260924071445.441822-1-adam@wermuth.pl> <20260924071445.441822-2-adam@wermuth.pl>
 <e03db2e9-085b-49ff-8d4a-bc112bc4ddd7@kwiboo.se> <CABkrwJ6uvjS8bez6j0MZbp2Y+O9RhyU09YOLrUzHaeUEVC=Qkg@mail.gmail.com>
 <arZ0nqBvHDzSbZOE@venus> <CABkrwJ5xdMcRJsjubSJcfMkTs5CzKdAvQK83Xar3gZPvO_wa0w@mail.gmail.com>
In-Reply-To: <CABkrwJ5xdMcRJsjubSJcfMkTs5CzKdAvQK83Xar3gZPvO_wa0w@mail.gmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 25 Sep 2026 19:42:33 +0400
X-Gm-Features: AclHuK-2aRN6dX_Oa2Kxhd9aYgpoKvv0HzTIcerNNDpaAcjfSDE1KhpeMcsyZ5E
Message-ID: <CAKTNdwG8YB7j-TrfJUr3f=7OBYC1Qx55Yu7ax=_C2NOtgNVrvQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Enable USB 2.0 host1 on Radxa
 ROCK 3B
To: Adam Wermuth <adam@wermuth.pl>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_084249_499719_F1BE7C1D 
X-CRM114-Status: GOOD (  22.78  )
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

T24gRnJpLCBTZXAgMjUsIDIwMjYgYXQgNTo1NuKAr1BNIEFkYW0gV2VybXV0aCA8YWRhbUB3ZXJt
dXRoLnBsPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gVGh1LCAyNSBTZXAgMjAyNiAzOjI2IFBNLCBT
ZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiA+IFdoeSB3b3VsZCB0aGlzIGJlIGJldHRlciBzdWl0
ZWQgYXMgYW4gT3ZlcmxheT8gTm90aGluZyBkZXNjcmliZXMgdGhlCj4gPiBzcGVjaWZpYyBjYXJk
IHBsdWdnZWQgaW4gYXMgaXQgaXMgYXV0by1kaXNjb3ZlcmVkIHZpYSBVU0IuIFRoZQo+ID4gb3Zl
cmxheXMgYXJlIG1vc3RseSByZXF1aXJlZCBmb3IgdGhpbmdzIHRoYXQgY2Fubm90IGVhc2lseSBi
ZQo+ID4gYXV0by1kZXRlY3RlZC4gRldJVyB3ZSBkb24ndCBoYXZlIE0uMiBLZXkgTSBhcyBhIERU
IG92ZXJsYXkgZWl0aGVyLgo+Cj4gVGhlIG92ZXJsYXkgd2FzIEpvbmFzJyBzdWdnZXN0aW9uLCBz
byBJJ2xsIGxldCBoaW0gZXhwbGFpbiBoaXMKPiByZWFzb25pbmcuIE15IG93biB1bmRlcnN0YW5k
aW5nIHdhcyB0aGF0IGl0IHdvdWxkIGF2b2lkIHBvd2VyaW5nIHRoZQo+IHNsb3QgKGFsd2F5cy1v
biBzdXBwbHkgcGx1cyBSRVNFVCMvV19ESVNBQkxFMSMgaG9ncykgb24gYm9hcmRzIHdoZXJlCj4g
bm90aGluZyBpcyBwbHVnZ2VkIGluLgo+Cj4gVGhhdCBzYWlkLCBJIGFncmVlIHRoYXQgdGhlIG1v
ZHVsZSBpdHNlbGYgaXMgYXV0by1kaXNjb3ZlcmVkIHZpYSBVU0IsCj4gYW5kIHRoZSBLZXkgTSBz
bG90IG9uIHRoaXMgYm9hcmQgaXMgZGVzY3JpYmVkIGluIHRoZSBiYXNlIERUIGFzIHdlbGwsCj4g
c28gSSdtIGZpbmUgd2l0aCBrZWVwaW5nIHRoZSBCLWtleSBzbG90IHRoZXJlLCBhcyBpbiB2MS4K
Pgo+ID4gU29tZXRoaW5nIHRvIGNvbnNpZGVyIGlzLCB0aGF0IGZvciBLZXkgRSBhbmQgS2V5IE0g
dGhlcmUgaXMgYSBwcm9wZXIKPiA+IERUIGJpbmRpbmcgbm93OiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvY29ubmVjdG9yL3BjaWUtbTItKi55YW1sCj4gPgo+ID4gV2UgcHJvYmFi
bHkgd2FudCB0aGUgc2FtZSBmb3IgS2V5IEIuCj4KPiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLiBB
cyBmYXIgYXMgSSBjYW4gc2VlLCBhIEtleSBCIGJpbmRpbmcgd291bGQKPiBhbHNvIG5lZWQgZHJp
dmVyIHN1cHBvcnQgdG8gaGFuZGxlIHRoZSBzdXBwbHksIFJFU0VUIyBhbmQgV19ESVNBQkxFMSMs
Cj4gc28gaXQgaXMgYSBsYXJnZXIgcGllY2Ugb2Ygd29yay4gV291bGQgaXQgYmUgYWNjZXB0YWJs
ZSB0byBkZXNjcmliZQo+IHRoZSBzbG90IGluIHRoZSBiYXNlIERUIGZvciBub3cgYW5kIG1vdmUg
dG8gYSBjb25uZWN0b3IgYmluZGluZyBvbmNlCj4gb25lIGV4aXN0cyBmb3IgS2V5IEI/CgpLZXkg
QiBiaW5kaW5nIHdvdWxkIGJlIHNvbWV3aGF0IG1vcmUgaW52b2x2ZWQgdGhhbiBrZXkgRSBvciBr
ZXkgTS4gVGhlCnNwZWMgZGVmaW5lcyAxNiBkaXN0aW5jdCBpbnRlcmZhY2UgbXV4IGNvbmZpZ3Vy
YXRpb25zIHNlbGVjdGVkIGJ5IHRoZQpmb3VyIENPTkZJR19YIHBpbnMsIHdoaWNoIG5laXRoZXIg
a2V5IE0gbm9yIGtleSBFIGhhdmUgKFBDSWUgdnMuIFNBVEEsClVTQjMgdnMuIFNTSUMsIGRpZmZl
cmVudCBhdWRpbyBjb25maWdzLCBkaWZmZXJlbnQgSTJDIGNvbmZpZ3MsIGV0Yy4pLgpTbyBpdCdz
IGEgYml0IG1vcmUgdGhhbiB0aGUgc3VwcGx5LCBSRVNFVCMgYW5kIFdfRElTQUJMRTEjLgoKU2Vl
IGZvciBleGFtcGxlIFsxXSB3aGVyZSBqdXN0IHRoZSBQQ0llIHZzLiBTQVRBIHNlbGVjdGlvbiBp
cyBkZWZpbmVkLgpBIHByb3BlciBiaW5kaW5nIHdpbGwgYmUgbmVlZGVkIHNvb25lciBvciBsYXRl
ciwgdGhvdWdoLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9mbGlwcGVyZGV2aWNlcy91LWJvb3Qv
YmxvYi9yazM1NzYvYm9hcmQvZmxpcHBlci9mbGlwcGVyLW9uZS9mbGlwcGVyLW9uZS1yazM1NzYu
YyNMNDEtTDE3MgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
