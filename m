Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C99BCCFD376
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Nov 2025 07:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1maTbFwFK2/VyPAUj1HX2E4k0Qf7u0eEWSfJyC7ZQoA=; b=iY6hD1/ot5mV99
	K9PWhOqkCc+yUFBRAZlw84EwGvRJ4sUOPkdFI2yTnpzkydZurCrzf/HbYIInQJElLfQeMv9lZ4W02
	W2iNXO5kQFXdyVhAVAGXI2B2aaLFoPCcZhsqfiIgqNGV4iunKBa5fBGQbfyWPKek7BW5uyqwDRAh9
	q6Mnw/dbHIzoLzu4cLlBMaIm0bxkSwPaJOgRP+uDJWsGCisrxNIKF8kZQqcK5wa949IO5DFKKD09t
	KGTE6OqlCoJUE6PaXhzv936dijsBfXnJ/dPu8sE6TSPER5Z/z9v7h0ltbIje2qlR2rMt282aM34LU
	qSeGRSshwMzqdGq3qpwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOtEd-000000006wW-1psj;
	Fri, 28 Nov 2025 07:49:43 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOtEa-000000006vk-2I9H
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Nov 2025 07:49:42 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-8b2ea2b9631so148874285a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Nov 2025 23:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764316179; x=1764920979; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xzb4o6woI0sKd6leSwCGnufqfj0RdO1VKVEpocSGcGU=;
        b=gIIGgszseYVldLj0Xm0V3N/g+B1H40yixnZLV7ffi6UfGdFWIuB2ZQxH4BxS+yTgEg
         1QTW9XacpBKtWx6Zecg7ASN1+DR08+B5/7+uHtYyYqlwN6XHg52jVHUIJIDGVUyJYX7a
         uRuwHjxRpQ8ECyEqybwCvZotHRI8zYhcmoUazf17QHQd47nTGz2ZIOPxdmMYsSj3XMtI
         K5z6ddPVgPMQnmYSVHlGjTe7pSYvZjR5Y9UF+mjwdpBXQLtJlPgT02fXAg2iuYI24lOb
         7CkZ52zb7ou1cpMYgS4UfJF359D6/cInEbFdTA2JMygiYEFgbf4DzVTks55yS/4FXnsW
         wS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764316179; x=1764920979;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xzb4o6woI0sKd6leSwCGnufqfj0RdO1VKVEpocSGcGU=;
        b=oeq90gDc4TNfgQ51mCHonhtT9I5vLL+e/tFinm9CXshzOn7jlvCeamOS+RmghTg5nN
         24dYQ7VBl2ZWjgBJC45RX0JqXf9Z3wni+C4gOEgamMWQ+j5IcvjPKqrqetY2A4n523/q
         E3a3qycRb0JzBM5yV3gWZFRTCYRWsh3npvnYej2sDUmNdHpgH9l4cFt+/iA+bLZvUpJB
         aV7t29NVF/K45kY2YiZr7VyMb2XnE2LmCmkThMDGr8rJYgu/WQHyftIeBGalKOMnX0rP
         T9wMEg1froSfoAff0XwhdSBfDrrpsNjYC1fbMig8UVc+yVTKGuAi0Tpb0F5d385Z/hZC
         JNGg==
X-Forwarded-Encrypted: i=1; AJvYcCWIFW71abrkCZl8dquXkNoCEEe3G73r6F1D8ZiDRxZ/2WQ1gANs44XruVwL6h084gErBkM46rNWguKUaSjaPw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx++Yhbv9Ag4CCfdLuHavH42mky/DPsTcaA+IuJP6kI4DilN0pw
	FYvXNCbIsUE8CJ/TqCCqUFqy1C/fOqhCDRVFbGDkUJ2LlAk23rbi7cWmoS79zIpwUEovc+m24e8
	tImEJzbBJj+7acAjgpPzWbSRQ+iSuf28=
X-Gm-Gg: ASbGncs1XCW/bsrwnR/yd7fXFBkUDis0xCvSSIjk90ocXfVe5assO7xvlnELHw14WYR
	zIp4SHAqKiFqxYkujaDvlp1nmCD1hN91sU8801ETvnNWyZg6eHV6ljTKL8Ymobg/zUAKhQAaR0X
	EptmX+XmCWZ3yrh6rOvBdm8ZXr1d7sqF4Fy00zDLo9pLqcbOZPr7jx3ZG8u01bbkzC0rqoqp5sI
	Ovbm8K+2KRN8DSWrFVft4i4ICwdbffvuY2fhpomFX2Ovyu2bIISVL/szjavvba2h+bKo2goGkjM
	tmOGm8lo0HMo4BA8ER3QGallrSvS
X-Google-Smtp-Source: AGHT+IHYzLcGh+cWGpJkei51y/kYklMPmBU3wbElTrGhOhOpPSp6GAM0EV8iuyukCLvsobhwpt+JVDig/00Wu3PpzZo=
X-Received: by 2002:a05:622a:4d4b:b0:4e8:aff9:a7a8 with SMTP id
 d75a77b69052e-4efc3f2a0efmr187482101cf.52.1764316179224; Thu, 27 Nov 2025
 23:49:39 -0800 (PST)
MIME-Version: 1.0
References: <20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com>
In-Reply-To: <20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 28 Nov 2025 11:49:31 +0400
X-Gm-Features: AWmQ_bnfm67nHyppKcn_WewzrQOH_TFdC0fMKR8wgi2rranNPLttVu9G4ijWIFw
Message-ID: <CABjd4Yx0wJG-RjbGo1EZXK=bDp0sBJvcwA8tJ5jNOZRmGq3r3g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_234940_614895_8EF03900 
X-CRM114-Status: GOOD (  11.34  )
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

T24gVGh1LCBOb3YgMjcsIDIwMjUgYXQgMzo0NuKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGUgTmFub1BpIE01IGJvYXJkIHN1cHBvcnRzIHBsdWdn
YWJsZSBVRlMgbW9kdWxlcyB1c2luZyB0aGUgVUZTSEMKPiBpbnNpZGUgaXRzIFJvY2tjaGlwIFJL
MzU3NiBTb0MuCj4KPiBFbmFibGUgdGhlIHJlc3BlY3RpdmUgZGV2aWNldHJlZSBub2RlLgo+Cj4g
Qm9hcmQgc3BlY2lmaWMgc3VwcGx5IHJlZ3VsYXRvcnMgYXJlIG5vdCBhZGRlZCwgYmVjYXVzZSB0
aGV5IGFyZSBhbGwKPiBub24tZ2F0ZWFibGUgZGVzY2VuZGFudHMgb2Ygb3RoZXIgcmVndWxhdG9y
cyBtYXJrZWQgYWx3YXlzLW9uLgoKT24gYSBzZWNvbmQgdGhvdWdodCwgSSdsbCBhZGQgdGhvc2Ug
cmVndWxhdG9ycyBpbiB2MiwgYW5kIGFsc28gaW5jbHVkZQphIGxpbmsgdG8gdGhlIHJlbGV2YW50
IHNjaGVtYXRpYyBbMV0uIEV4cGxpY2l0bHkgbGlzdGluZyB0aGUKcmVndWxhdG9ycyBoYXMgYSBz
bGlnaHQgYmVuZWZpdCBvZiBmZXdlciBjb21wbGFpbnRzIGZyb20gdGhlIGRyaXZlciBhdApib290
IHRpbWUsIGFuZCBtYXliZSBhdCBzb21lIHBvaW50IHdlJ2xsIHdhbnQgdG8gdHJ5IGFuZCByZW1v
dmUgc29tZQpvZiB0aGUgImFsd2F5cy1vbiIgbWFya2luZ3MgKHdoaWNoIHdvdWxkIHJlcXVpcmUg
YSByZWFzb25hYmx5IGNvbXBsZXRlCmRlc2NyaXB0aW9uIG9mIHRoZSBwb3dlciBncmFwaCBpbnNp
ZGUgdGhlIGRldmljZSB0cmVlKS4gVGhleSBhcmUgYWxzbwphY3R1YWwgZGV2aWNlcyBvbiBib2Fy
ZCBhbmQgbm90IHB1cmUgYWxpYXNlcyBvZiBvdGhlciBleGlzdGluZyBwb3dlcgpsaW5lcywgd2hp
Y2ggSU1PIHF1YWxpZmllcyB0aGVtIGZvciBpbmNsdXNpb24gaW4gdGhlIERULgoKRlRSOgpWQ0Nf
VUZTIGlzIGRpcmVjdGx5IGZlZCBieSBWQ0NfM1YzX1MzLCBubyBmYW5jeSBjaXJjdWl0cnkgaW4g
YmV0d2VlbgpWQ0MxVjJfVUZTX1ZDQ1EgaXMgZmVkIGJ5IFZDQzVWMF9TWVNfUzUgdmlhIGEgRENE
QyBidWNrIGNvbnZlcnRlciwKd2hvc2UgRU4gcGluIGlzIGRyaXZlbiBieSBWQ0NfM1YzX1MzClZD
QzFWOF9VRlNfVkNDUTIgaXMgZmVkIGJ5IFZDQ18xVjhfUzMgdmlhIGEgTU9TRkVUIGdhdGVkIGJ5
IHZvbHRhZ2Ugb24KVkREQV8xVjJfUzAKVUZTIGhvc3QgY29udHJvbGxlciBpdHNlbGYgaXMgcGFy
dCBvZiB0aGUgVkNDSU83IGRvbWFpbiwgd2hvc2UgbG9naWMKaXMgZHJpdmVuIGJ5IFZERF8wVjc1
X1MzIGFuZCB3aG9zZSBWQ0MgaXMgZmVkIGJ5IFZEREFfMVYyX1MwCgpXaWxsIHdhaXQgZm9yIDI0
aCB0byBlbGFwc2Ugc2luY2UgdjEgc3VibWlzc2lvbiBhbmQgc2VuZCBhIHYyIGxhdGVyIHRvZGF5
LgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKClsxXSBodHRwczovL3dpa2kuZnJpZW5kbHllbGVjLmNv
bS93aWtpL2ltYWdlcy85Lzk3L05hbm9QaV9NNV9MUDVfMjQxMV9TQ0gucGRmCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
