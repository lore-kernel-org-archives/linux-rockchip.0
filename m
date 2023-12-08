Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52DA7C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 11:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ystafCRcV4+KyFgtGOw6rVpLm9hd8teM5oMSgkJQVTw=; b=dNj23czznhzrEf
	M/VDWi46dxXKJ72aX8cAsAvxS8W8FUY4YHJb/pZPOXQKHw66YV+3vXR+RZzPRytZzHqJdCXFBEma1
	Z34FA4D/41ni33+2KAHSbKtJ9jSUhUui0Zu7Ewvkt60WmxKi9+mqJtrqlTlulFclAJYZ9dO7FgOaA
	HLt1TTQGaX3DrDy0oHCmWp9XfVT3gfcwwdnfucvsLY1yzSpAQWksm1VPYlNdzPRGqRgDQvmp0bduj
	e00znT3KkBCRf7ysOE3DjWGb1N1N5pMyE0bJjWhbYpSBlN0ABfpwhxtcxJS/OIidpa+hWm+BZfh5L
	OlCGPmM/z6Z35SGPKLdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBYgW-00FKbA-0s;
	Fri, 08 Dec 2023 11:06:20 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBYgT-00FKaT-0D
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 11:06:18 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3b9dd6886e2so926231b6e.3
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Dec 2023 03:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702033575; x=1702638375; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sTStCADuqZQf9MONYgyZJwxd3NCGbjJM0KdhDazUCmk=;
        b=pwIMpzlHBdjvnPLnRhUfTlV2n3whjoWxfPpIlYUX/YyOcQwICwqVd4JiRPEcm38i+c
         IRjhh6ElzLVrAk+HoEoxUkRuClBCqNpaGgm2bXWGlFmQ4+uv2IRTarzl8bze/C8WQwC0
         MUowwCconKJPGqhPJ5wd1tkm5G8YkBaRZkiGgyJFChzn4S1IAJ9omNNysXAD2MRWdmHB
         J5be/XZvecvaKXiswE0wx8jtOy/MGqSvSknF1weD5+u5mWIwmet+rH/kXblxGdZZgbdf
         lMFxj7b3//ecPEBeP0QHHr8/tW5NM0eU52sVkhzEBe/87VPUtmCUmDjTu4y8E12m+jEC
         GfwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702033575; x=1702638375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sTStCADuqZQf9MONYgyZJwxd3NCGbjJM0KdhDazUCmk=;
        b=CZvIkgvbaLV8UREFdATnTIOkz3qPeEZ9ODiTEh6SPRmPvjbxtMO9tRj8LDT8HIfn/A
         SJNT6J56X0/nfOh7SMF8nHYNfSA4hD6AJ69zb+pkuzDnqYQIHad+4wwDiDfeRgmh95Fx
         se6axyKRJQPVg/1qc+LHOtax7Ng6KB55WDC4Khq1oLhcCUs21HuO1N/ZFLO+s1Vrt/YI
         685GvtbR4EwRUmr4CaF1Xyr7NmuMRMbA3k4Zl2L7PojEHXh4JuAaqoSADwbvSDxN4S1j
         up3EYahe67r+SWihZxMh5Qw5EeMZcU6yoy2t6lWNE09vApK7HtOF9cZPwayz4S5ret3M
         Pqzg==
X-Gm-Message-State: AOJu0YxZ4TUcNhOmBSKJ82xrDhsf39R10N0zhq9p37mIH/Q/xVBDrbzJ
	HOtiQw2Be+srD1Fs0aVJE0oxmrhP74MpOMiObgghQZMV2aHYXJwd
X-Google-Smtp-Source: AGHT+IFFQqeaNPZR1quScaEQnyHvDrtU0cpNXB7zj+gEFrIX7z3J5S77qyJI/U/4Mfauy5vJ636kYMsWDa8yCrCbA18=
X-Received: by 2002:a05:6808:88:b0:3b9:e897:a85 with SMTP id
 s8-20020a056808008800b003b9e8970a85mr792798oic.23.1702033574839; Fri, 08 Dec
 2023 03:06:14 -0800 (PST)
MIME-Version: 1.0
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
 <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org> <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
In-Reply-To: <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Dec 2023 13:06:04 +0200
Message-ID: <CAA8EJppJZSXEmc6EQGJyBmZYgT=kOFPpYuf0+6ouAYB7MXDwOw@mail.gmail.com>
Subject: Re: Rk3399 - Typec - Extcon
To: Da Xue <da@lessconfused.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Shantur Rathore <i@shantur.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, cw00.choi@samsung.com, tom@radxa.com, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_030617_109881_45B1610F 
X-CRM114-Status: GOOD (  18.25  )
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

T24gRnJpLCA4IERlYyAyMDIzIGF0IDA2OjE4LCBEYSBYdWUgPGRhQGxlc3Njb25mdXNlZC5jb20+
IHdyb3RlOgo+Cj4gT24gVGh1LCBEZWMgNywgMjAyMyBhdCA3OjA34oCvUE0gRHJhZ2FuIFNpbWlj
IDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4KPiA+IEhlbGxvIFNoYW50dXIsCj4gPgo+
ID4gT24gMjAyMy0xMi0wNyAyMjoxMiwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+ID4gPiBIaSBK
YWdhbiwKPiA+ID4KPiA+ID4gV2hpbGUgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgaXNzdWVzIHdpdGgg
VHlwZWMgQWx0TW9kZSArIFN1cGVyU3BlZWQgb24KPiA+ID4gbWFpbmxpbmUgZm9yIFJrMzM5OSBi
YXNlZCBSb2NrUHJvNjQsIEkgY2FtZSBhY3Jvc3MgeW91ciBwcm9wb3NlZCBwYXRjaAo+ID4gPiBm
b3IgVHlwZUMgVmlydHVhbCBQRCBEcml2ZXIgWzBdLgo+Cj4gSSB3ZW50IHRvIHRoZSBGVVNCMzAy
L1RDUE0gc3RhY2sgaXNzdWVzIGZvciBST0MtUkszMzk5LVBDLCBzZWUgdGhlCj4gcGF0Y2hlcyBu
ZWVkZWQgaGVyZQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9saWJyZS1jb21wdXRlci1wcm9qZWN0L2xp
YnJldGVjaC1idWlsZGVyLXNpbXBsZS9pc3N1ZXMvMiNpc3N1ZWNvbW1lbnQtMTgzNzI2OTQ3NQo+
Cj4gQSBtYWpvciBpc3N1ZSBpcyB0aGUgbGFjayBvZiBhIGRyaXZlciBpbiB1LWJvb3Qgd2hpY2gg
Y2F1c2VzIG1hbnkKPiBub24tY29uZm9ybWFudCBwb3dlciBzdXBwbGllcyB0byB0aW1lIG91dCBj
YXVzaW5nIGVycm9yIG1lc3NhZ2VzLiBUaGUKPiBwYXRjaGVzIGFib3ZlIGRvIHRoZWlyIGJlc3Qg
dG8ga2VlcCB0aGUgc3RhY2sgd29ya2luZyBkZXNwaXRlIHRoaXMuCj4KPiA+ID4KPiA+ID4gV291
bGQgeW91IGtub3cgaWYgdGhlcmUncyBiZWVuIGFueSBvdGhlciBkZXZlbG9wbWVudCBvbiBzdXBw
b3J0aW5nCj4gPiA+IFJvY2tjaGlwLVR5cGVDLVBoeSB3aXRoIEZVU0IzMDIgYm9hcmRzIGxpa2Ug
Um9ja1BybzY0IG9yIFBpbmVCb29rIFByby4KPiA+ID4KPiA+ID4gWzBdIC0KPiA+ID4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDkwNDE5MTgzMC4zODcyOTYtMy1qYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbS9ULyNtN2I1ZDY3NDc2NDM3OTI1MzU2OGE0OTE1ZjJmOTk4OGQ3NGM4
NjU5Mwo+ID4KPiA+IEJhc2ljYWxseSwgd2UgbmVlZCB0byBnZXQgcmlkIG9mIHRoZSB3aG9sZSBl
eHRjb24gaGFjaywgYXMgZGVzY3JpYmVkIGluCj4gPiB0aGUgdGhyZWFkIGxpbmtlZCBhYm92ZSwg
d2hpY2ggaXMgYSBtYXNzaXZlIGpvYiB0aGF0IGJvcmRlcnMgd2l0aCBhCj4gPiBjb21wbGV0ZSBy
ZXdyaXRlLiAgSSdsbCBwcm9iYWJseSAoYW5kIGhvcGVmdWxseSA6KSBkaXZlIGludG8gYWxsIHRo
YXQgaW4KPiA+IHRoZSBmb3Jlc2VlYWJsZSBmdXR1cmUuCj4KPiBleHRjb24gaXMgYSBkZWFkIGVu
ZC4gRG1pdHJpIGlzIHVzaW5nIHNvbWV0aGluZyBlbHNlIGZvciBRdWFsY29tbSBidXQKPiBJJ20g
bm90IHN1cmUgaG93IG11Y2ggb3ZlcmxhcCB0aGVyZSBpcyB3aXRoIHRoZSBzdGFuZGFyZCBUQ1BN
LgoKT24gUXVhbGNvbW0gd2UgaGFkIHN0YW5kYXJkIFRDUE0gKHNlZSBkcml2ZXJzL3VzYi90eXBl
Yy90Y3BtL3Fjb20pIG9yCnRoZSBjcmFwcHkgdmVyc2lvbiBvZiBVQ1NJIChkcml2ZXJzL3VzYi90
eXBlYy91Y3NpL3Vjc2lfZ2xpbmsuYykKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
