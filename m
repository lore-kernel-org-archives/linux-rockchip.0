Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4839A606A326
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 16:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VERb7Cer;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=pLXUjdyr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CLoQYjGxdENl3gyel7yxpMkmv3GLyBiMi/Ud6zwwiLA=; b=VERb7CerT7b2vVOLoep1qNtxGQ
	VXOCQBh247RmoaN6rZ9TQnhZ3xYaxazxu56rcPlY3ptpiK4X8SIDhLKR8Ao6QRxgPcvc+YuuQm9ph
	wV2GCvk1aoCtgPfALSQPiUIpvzXYOTcQ2VykViSflzeHN9/BdpxXAMMQM1Ow1C/gSv0TUznhXurTc
	cLq1ZtjoS+Y4NB5OK/DDCjX9tQuN0oTnrn3DHbUlluI3I+22EA9uMLOOxvmI9grymTvbvfJCOmIfX
	VuQIAN5vEig9JeGHjt9NUOtkLlmNWaLr6hEbv/ou9XzYDcWAGXBSpUWoelto1pbulTm0uEXAHJ4vK
	4y2XNpEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoRt-00000004UTw-29xR;
	Tue, 10 Nov 2026 16:11:53 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoRr-00000004UTB-23tM
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 16:11:52 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c50489cdf7eso48848466b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 08:11:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794327109; cv=none;
        d=google.com; s=arc-20260327;
        b=Sdgue9bSfmbMIvmdVZVplRYhLjm/xSVf4pCTQbAHvKPTEYvePdIfGUasYIvX6fLS86
         1yvTjHGwEJ1g8TM/XoxfU1kCJZqQLmub9qZkn1CyPUBG2wz/I74hAJztfjWRUHow0/7J
         lIuU5M3J6xw7j8YiCPZPB2x+9emTChr8x89M+H/ixYT2lLZlCahYNT2lkFm6G2m46Nx2
         Tx3cXOIShJH28qkSAXyNjtykh3jtJCg2xeGll3eI5F6wczTCwBRI2AsyicaPmI2JfSHd
         /pMj+HLJ6nSt0bRJ9pLnpoZGPf1ZIkXAYiz07m/+c+6zrvMSNvnmE58P8Zarvu5PEYmD
         NoCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Bvu8fH1m1BZ2sQQoPyfnhre5VWvJqEOu2Sa0mYvTTis=;
        fh=SwJZZuVFGiAcphMdhNy7lEo1xwkKfpZVobMG5oVBE9I=;
        b=VPyxHuz5QD0PgjLee7yLKl6poBgh91204A0va/uppujX37yTisBCUTRd1KXOlj3x7X
         WZOb547BqrNZmAXcMNLMY00v+QbDdX3rkw0OsurLZF6ZV0uOfAZ8uAfj00aSsqqadZqq
         /FPx6hgglmtdRtU1KSN/NfB7vbDh7/y+7io/f2RfC+8hwtYaEl4BPs8KmUsCFCYE61n1
         UX1R5CcINlxmAwRb96nb6EODjIx381mXeAOfSrflo8UihNlVzg9W2FL2mFUUkbBZeLup
         PbCuIPn83NVEQ8Ze7SfD/0mLDI5qqs9gjWqygsczdysGzWCWSt2gDpCk9aUeQeaFZn0X
         BDHg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794327109; x=1794931909; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Bvu8fH1m1BZ2sQQoPyfnhre5VWvJqEOu2Sa0mYvTTis=;
        b=pLXUjdyrLWBEOqTha9DT5DqgD4SoJZe980qSASshUBRne4Ez8b5d71pTSQQjf1zcQ0
         PWohAfmO52Xm0Fu3GM/4iC3svlG8AarprQwezpetXOyX1TLL2vAPZt1Jg1GxLiEwaLwh
         mSQ+xOkLfMfiboUqjq2cnsMXgUb3QGC6ayFlEAi0F8KFM1mD+/iTQCgaGJhBRbfT3N0o
         wRwHMoX4m4maDwtFvM2PQ18S5i0mVxnZhmJ0/Eg3fUDvXg2rrWQELo79Eub2w7/p22cV
         lC4hFXTCI24lZ2JrBe2fTLsHf5pwBJSf5B4oiqt2vS0ZZBMnYqXS7aMY66Pq3y2gGNWk
         QUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794327109; x=1794931909;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Bvu8fH1m1BZ2sQQoPyfnhre5VWvJqEOu2Sa0mYvTTis=;
        b=LGBqBUMVAiZjB7whcldzmSrtC6POeE6FCsTn+1i674YGQyLAtYcThs8R6rfd+oLhHv
         fkynwor1pzQCc8t7mX+IrVHgmeNH+0cnxrDDCY48avvyU/yzRyouarc0uAXIxF6QzLYJ
         ebc/t/UXTWp8s2Rk6quKTzjOHPtsdFpMKDPJUxGOMFmd+RBNrKDv3+cOGY8Liqp5/Me+
         RNpVwaXnK+sWSN1v3kMYAlRCWYQB0ITaeO6DWgIABhyUK/Xu4cyfLFQNBLgU4Hr6KwSj
         MDWaVWSqDXPr+cS8JoBi8PHfg7r3JxdObPRn8wyK7kNwf/pa5cQz6uDXc8/ugtBeuxHY
         PWMw==
X-Forwarded-Encrypted: i=1; AL+hErE2j2VXJH99a0wK5Y9UIf/ZHEs1jr2gdRtZr2yWhDGI5iWhouBHwzcsKd9j186qI9uJGpWEHrZNdeU80q6R9A==@lists.infradead.org
X-Gm-Message-State: APuU4Z+IxuwTDqR2s4SudoZApbki2RNTlw6LbaQoyCo7iCl0zCb4qLf1
	MD8mucyG9tmeS3FCLtDaDjXnYC+SpwEJTOuTTUKpWCeYfRPtrcfmxSm37TLfoNvvkb0kFguHgQK
	//qDX2HNmIsETzpS1KRyuWHKpA26WWuQ=
X-Gm-Gg: AYBFou3j7WU6NeuOI0M0OrrCpo7sZ6YfmkwJ4cmvNjcgy0EbMs2Eq+hDZCpYT6LluTm
	2IK6NetRwW01bt5VmFRuhkTs8ojmayjuzAoWkC8QYS9qK7kGoWGEBhyvVyvgd2KSb7hsVJFuiQY
	Go5QAjNllko16wSdXpWK7qC74HTihxGHbSw1FDFvglHXqi8I2B/re4hlAAk2YF/ZI3RX+DMEWOM
	cqOpzM3Fla5hPXDiUSmOla9XqLtwE+G48wkm7hAsJOQuWUaKgblmcRD7eKwNx1ffDR9umbBps2L
	efi6xVqzLzIGme6kD3DuDlCSF/YR2/SaXP16ALUUNTDQj0FxlTHdRxEi3ggC7+7LpUVpy20YC+f
	9hei3fUAZjM6ve2Emb8IgvtX0d3vt2l/HRWSHbqazodeKruAhyK8=
X-Received: by 2002:a17:906:194a:b0:c41:266:68a7 with SMTP id
 a640c23a62f3a-c504952c255mr192385866b.10.1794327109186; Tue, 10 Nov 2026
 08:11:49 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <CALj3r0ijsuzadYoi0NPkSpT8smRyi607APfxLS8_u3JSH3+dPg@mail.gmail.com>
 <20261106115040.1199269-1-amadeus@jmu.edu.cn>
In-Reply-To: <20261106115040.1199269-1-amadeus@jmu.edu.cn>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 11 Nov 2026 00:11:35 +0800
X-Gm-Features: AclHuK-W_aGhTciJcK2jT1mQzUOxx8a9MsoP2BEfAZfP7jfpZyRRqnBuAfsnq9g
Message-ID: <CALj3r0hOjksUtYg+qLqPU9kz4w3SAqGvSmFFi9YBXNGiEPEZSw@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: rockchip: fix USB OTG power on
 Photonicat in battery mode
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: bigfoot@classfun.cn, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_081151_551658_0934A743 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.4 (/)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Q2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPiDkuo4yMDI25bm0MTHmnIg25pel5ZGo5LqU
IDE5OjUx5YaZ6YGT77yaCj4KPiBIaSwKPgo+ID4gICAgKDVWX0JPT1NUIGFuZCA1Vl9PVVQpLiBB
ZGRpbmcgYSBgdmNjYCBwcmVmaXggd291bGQgYnJlYWsgdGhlIDE6MQo+ID4gICAgbWFwcGluZyBi
ZXR3ZWVuIHRoZSBEVFMgYW5kIHRoZSBzY2hlbWF0aWMsIG1ha2luZyBpdCBoYXJkZXIgZm9yCj4g
PiAgICBhbnlvbmUgdHJhY2luZyB0aGUgYm9hcmQgcG93ZXIuCj4KPiBJIGRpZG4ndCBtZWFuIHRv
IGNoYW5nZSB0aGUgbm9kZW5hbWUsIGJ1dCByYXRoZXIgYWxpYXNlcy4KPiBCVFcgbm9kZXMgc2hv
dWxkIGJlIHNvcnRlZCBieSBub2RlbmFtZSAocGxhY2VkIGF0IHRoZSB0b3ApLgo+Cj4gPiAgLi4u
IEhvd2V2ZXIsIDVWX09VVAo+ID4gIGlzIGEgZGlzdGluY3QgbmV0IGluIHRoZSBzY2hlbWF0aWMu
IEtlZXBpbmcgdGhlIG5vZGUgbWFrZXMgdGhlIERUCj4gPiAgcG93ZXIgdHJlZSBhY2N1cmF0ZWx5
IHJlZmxlY3QgdGhlIGhhcmR3YXJlIGFuZCBjbGVhcmx5IGRvY3VtZW50cwo+ID4gIHRoYXQgYm90
aCB0aGUgVVNCIFZCVVMgYW5kIEhETUkgNVYgZG9tYWlucyBzaGFyZSB0aGlzIE9SLWVkIHNvdXJj
ZS4KPgo+IEl0IGlzIG5vdCBhbiBpbmRlcGVuZGVudCBuZXR3b3JrLiA1Vl9CT09TVCBhbmQgNVZf
T1VUIGFyZSBvbiB0aGUgc2FtZQo+IFZPVVQsIG9ubHkgc2VwYXJhdGVkIGJ5IGEgZGlvZGUuIFRo
ZSBkZXZpY2UgdHJlZSBkZXNjcmliZXMgdGhlIGhhcmR3YXJlLgo+IDVWX09VVCBpcyBub3QgYSBy
ZWd1bGF0b3IsIGl0IGhhcyBubyBlbmFibGUgY29udHJvbCwgc28gdHJlYXRpbmcgaXQgYXMKPiBh
IHN0YW5kYWxvbmUgcmVndWxhdG9yIGlzIGluY29ycmVjdC4KPgo+ID4gIC4uLiAgRm9yIG5vdywg
Y2hhaW5pbmcKPiA+ICAgIGB2Y2M1djBfdXNiMzBfb3RnMGAgLT4gYDV2X291dGAgLT4gYDV2X2Jv
b3N0YCBpcyB0aGUgbW9zdCBhY2N1cmF0ZQo+ID4gICAgcmVwcmVzZW50YXRpb24uCj4KPiBBZGRp
bmcgYSBmYWtlIHJlZ3VsYXRvciBpcyBqdXN0IGEgd2FzdGUgb2Ygc3RhcnR1cCB0aW1lLgoKSGks
CgpUaGFua3MgZm9yIHRoZSBmZWVkYmFjay4KCkkgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gcmVn
YXJkaW5nIDVWX09VVCBub3QgYmVpbmcgYSBzdGFuZGFsb25lCnBoeXNpY2FsIHJlZ3VsYXRvci4g
SG93ZXZlciwgSSdkIHByZWZlciB0byBrZWVwIHRoZSBub2RlIGZvciB0d28KcmVhc29uczoKCjEu
IENvbnNpc3RlbmN5OiBUaGUgRFRTIGFscmVhZHkgbW9kZWxzIG90aGVyIGFsd2F5cy1vbiBmaXhl
ZCByYWlscwogICB3aXRob3V0IGFueSBlbmFibGUgY29udHJvbCAoZS5nLiwgdmNjaW5fNXYsIHZj
Y19zeXNpbiwgdmNjX3N5c29uKS4KICAgS2VlcGluZyA1dl9vdXQgaXMgY29uc2lzdGVudCB3aXRo
IHRoaXMgZXN0YWJsaXNoZWQgcGF0dGVybiBpbiB0aGUKICAgc2FtZSBmaWxlLgoKMi4gQWNjdXJh
Y3kgdG8gdGhlIHNjaGVtYXRpYzogNVZfT1VUIGlzIGEgZGlzdGluY3QgbmV0IHdoZXJlIHRoZQog
ICBleHRlcm5hbCBEQyBpbnB1dCBhbmQgdGhlIGJvb3N0IG91dHB1dCBhcmUgT1ItZWQgdG9nZXRo
ZXIuIEtlZXBpbmcKICAgdGhpcyBub2RlIG1ha2VzIHRoZSBEVCBwb3dlciB0cmVlIGEgMToxIG1h
cHBpbmcgdG8gdGhlIGhhcmR3YXJlCiAgIHNjaGVtYXRpYywgY2xlYXJseSBkb2N1bWVudGluZyB0
aGF0IGJvdGggVVNCIFZCVVMgYW5kIEhETUkgNVYgc2hhcmUKICAgdGhpcyBPUi1lZCBzb3VyY2Uu
CgpSZWdhcmRpbmcgdGhlIHN0YXJ0dXAgdGltZSwgYSBmaXhlZC1yZWd1bGF0b3Igd2l0aG91dCBH
UElPIG9yIGNsb2NrCmNvbnRyb2xzIGRvZXMgbm8gaGFyZHdhcmUgSS9PIGR1cmluZyBwcm9iZSwg
c28gdGhlIG92ZXJoZWFkIGlzCm5lZ2xpZ2libGUuCgpPbiB0aGUgbm9kZSBvcmRlcmluZzogdGhl
IG5vZGUgaXMgbmFtZWQgYHJlZ3VsYXRvci01di1ib29zdGAgKHN0YXJ0aW5nCndpdGggJ3InKSwg
c28gaXQgaXMgY29ycmVjdGx5IHNvcnRlZCBhZnRlciBgYmF0dGVyeWAgYW5kIGBjaG9zZW5gLgoK
Q29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
