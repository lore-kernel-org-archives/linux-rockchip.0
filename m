Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6B2606B0F4
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jAu/Y2vz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TGE3mooZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Iea1bB8klML0qaSI281YCYiEC1ND484i0VtLHYSUTtk=; b=jAu/Y2vzOLZMh1krQehd+C33XL
	2bhjF7B0V06x96zBXQoybMVOAt5yE25Z6L4hOlS8wq78/5TlF759mrkqWGufyuVPASDI1pnajPz/W
	oxEl+z3cNMR90buG1SnFZUTeP9mymwAr/5aYGjeqQxulXf9RfaDGELGyJvET5jDJ585Jt0F+Z/Znt
	ZZiRPUF1uXNfmQeppzTUNAuhnAsLIGnmlEa0h5WpMYaxpM6ZBxhtF6/1M/NA8ZNWvy/jACrMicicJ
	5Dt32h2fbrOP21Hl6Nk9cHbF1X50FipsP3nyY+VtBLRBjTGVlPhv6mePbvIXXq0Bv+EpKwrVC78/c
	mdldCJMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvfb-0000000HQLA-2NRy;
	Mon, 02 Nov 2026 17:18:07 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvfW-0000000HQJJ-2NSI
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:18:04 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c46872a230eso218547866b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:18:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793639880; cv=none;
        d=google.com; s=arc-20260327;
        b=StdxKnR8WPcvwHsNfEX7hyJW0rPznwuYgXbAssGeq/SFr/ekT3Wzr6xpQC0zOfMUEk
         jWxQCf1WAlGpc/xNJEgQef7VsSpFaY9nw9gjBW+FfTHukM4nIdQ9FeigcfyAxIrKqU20
         0M+2iKpjPGrY0acWDLA3mu2+Ifa5P1wVOYouUf62N/+mhirRbljnzd+Ma/MXz4wER9XB
         T1wN4vG83WnLqPc2qbFuqfm0B89gS+BFQmh8crsR0mm2PV4/7TtGvqwZE7Mt7f89WmLD
         3JSOQfVjtGKjjcruVP060Ph60W7QXxVQ6xwLru9klIDzmA251atcLKl2QoIGaRJYv4ST
         IXTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NZqLgjTNQffm4puDahPJd9/7EHswV3BahHnhljOtjho=;
        fh=UMoQos3KijMJYF6GRNm3ySDffXuLszhgPyEMeOEG1rU=;
        b=K+6U9qhVCSYBVY9CO421bxDECcdFz9FmjBzn3d7nsfvUnpR2XUjuf0bpnVQZQhm44N
         c8hjqRWoWiPlspvkUjbzDmG+tlt1FGkwpADi60UbvzGZJ48Syix0NTXHj/SxYbWD91SR
         z4aK/Q1K1xQHo3qmaP+nHieEUBYrRtM4Uwse5OdiVIErt9whSNBOiGJ+Q80SBD7fXww5
         BRHrnH5ZtQw3Cfiwnt4YV/MsJ2323WxD4VW+jwy2fsywY7cNr4bZxVIPLGmgnkQQorH9
         V4sooMYwgF1DyD0QvA4+5YNJA5Z9IaUWhi/ZdTSqZDvFfO/MPpFDtfQSYHt18Wh7XuNl
         /RNA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793639880; x=1794244680; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=NZqLgjTNQffm4puDahPJd9/7EHswV3BahHnhljOtjho=;
        b=TGE3mooZRWlDz3h/GALcg2LlTFZz+BckCizXqm1wgO86Pz6TuzKfoRFjYz4kNF6R9T
         uu/XRV9lTGJ2OW64fhhPMDhezi69O1zoszwgN8oLVAgl9uBtw7kQBrmjtdBQ3dRFKpOs
         WnRwIiO6KFgsvxuN578RIDqo6IeHznBNud8pzF5YorIwPWLRYxYob8zVMrrNYSdZElWR
         iU1z1YO/HhVMAPd4aXppOJhohqbfRrRkghdhPqw2yy51fWQDA+rM8d6beTjr6Ohdehfb
         Z0qk8CER/oGNv0CTeS1Ru6DPvUf8lEllcy70HhQgT1gVIsKYqaKKKOBJUJ1YrVfeXbUk
         tFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793639880; x=1794244680;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NZqLgjTNQffm4puDahPJd9/7EHswV3BahHnhljOtjho=;
        b=flerCX9UkZpgKxOaF0TWe4Vr51xqwu+RwuZ/JNJtlw29MLLQJYJORSeBDseF51p8PA
         GLdJOWZMlDJhYvYIMla7thPoGulQXS7qFMWqeqrlUdtB0dKV6JF0sZ1aGR/p7bQOavLe
         k4ULP+dys7RJ2E2K0Vn52viivl1dUerUOUII1LLqHvXnuK+hccQov9f2u3BOtgU9uxvs
         PwrL+o7yMT6n5uYhLks0wl6HAApjn6fd78Du1yh2jlRPu7Y4tIIqgOhh4U/W3uZp8pLV
         U+48YbIkR8lHoYOUzMwUalWO6Yg6bp+wjR3+mSOgmifScqdd2emipfk+d+SUUF+SmhNX
         uQOA==
X-Forwarded-Encrypted: i=1; AKwUvByPOe/NkaC/Ccnzf+ijU+sJ3XLrDxgakseEWpgj67h4CR6+o7IyYQxUu8wycRwv+iRqIYk5x6kGblq7hRNbEA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9RNsC9tTsTFCf8XvSsCmSZzaMi809dEv/BsiNObvmPoUSY1Zem
	q0PqpoR3pcxVhbUpuaQAUwgb9c6TBvNa9m1hk6m3U6X4WsWgEVNbVd+C++m8PXUwNyqr/kOKONU
	s2fq8R2gUi3Fra5DdnuErakFod24lYAY=
X-Gm-Gg: AYBFou3qASlQhqdHBjXe49G2dtjUO6vWY5azDkBVl6scJbQqx4cVe6nN94kOgiomGcB
	JLT2JJsjU0S4ndXH8r8EyLB8f9f6AFcuiY6b/jVmKheh9MaMgLkcF5/ZU4Nap2u7HA8fl7KCvmM
	arMJqQQsDAJiux3dHjRgUSt9AE7HjBIXz99vy3k98O+c3D2tWaC6at/Y6xAiYpKjSrVxRbjBBaR
	qfYPDnHOI5DiBhKgdFz4DxfVoEHgOjLpDxju1naTLbMw5zbymvuk7gvLVDq6R6izYmCFJ1gSH8W
	rZD2v1IsOvHorbP4tpVQqggi6gVIv3QAhHdncOT2fItxQQCC1KhpdEpMJsaxApmE7c6vU44upT/
	8y/HATQiw2c3pFruQ20B9f5qUhuwK+AdtKSg797g=
X-Received: by 2002:a17:906:7309:b0:c41:c718:f5c5 with SMTP id
 a640c23a62f3a-c4ca7a15633mr908428966b.13.1793639880351; Mon, 02 Nov 2026
 09:18:00 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261101192807.897562-6-coiaprant@gmail.com> <20261102115001.1820171-1-amadeus@jmu.edu.cn>
In-Reply-To: <20261102115001.1820171-1-amadeus@jmu.edu.cn>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 3 Nov 2026 01:17:48 +0800
X-Gm-Features: AclHuK-cq2cybZ_qtRU2eWVJYfCWRlRj-h4oQeg1rwA7i6-MdCUq3glp_F28zcs
Message-ID: <CALj3r0hU-n_c0QSw8frG3j0bHenDa35-c=WbnYU5QTGS8rOZsQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: fix USB OTG power on Photonicat
 in battery mode
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: bigfoot@classfun.cn, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_091802_641721_4415E28C 
X-CRM114-Status: GOOD (  12.58  )
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

Q2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPiDkuo4yMDI25bm0MTHmnIgy5pel5ZGo5LiA
IDE5OjUw5YaZ6YGT77yaCj4KPiBIaSwKPgo+ID4gKyAgICAgLyogYWN0dWFsbHkgZmVkIGJ5IHZj
Y2luXzV2LCBkZXBlbmRlbnQgb24gdmNjNXYwX3VzYjMwX290ZzAgKi8KPiA+ICsgICAgIHZjYzV2
MF91c2IzMF9vdGcwX2Jvb3N0OiByZWd1bGF0b3ItdmNjNXYwLWJvb3N0IHsKPgo+IFRoaXMgaXMg
aW5jb3JyZWN0IGZyb20gdGhlIHNjaGVtYXRpYzoKPgo+IFZCQVQgLT4gNVZfQk9PU1QgLyA1Vl9P
VVQgcmVndWxhdG9yCj4gICAgICAgICAgICAgICAgICB8Cj4gQm9vc3RfRU4gLS0tLS0tLS0tCj4K
PiA1Vl9PVVQgLS0tLS0KPiAgICAgICAgICAgICB8LT4gVkNDNVYwX1VTQjMwX09URzAgLT4gVVNC
MyBWQlVTCj4gVkNDSU5fNVYgLS0tICAgICAgICAgICAgfAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHwKPiBVU0JfSE9TVF9QV1JFTl9IIC0tLS0tLS0KPgo+IFNvIHlvdSBzaG91bGQgbW9kaWZ5
IHRoZSB2aW4tc3VwcGx5IG9mIHZjYzV2MF91c2IzMF9vdGcwLgo+Cj4gPiArICAgICAgICAgICAg
IHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ib29zdCI7Cj4KPiB2Y2M1dl9ib29zdAo+Cj4gPiAr
ICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2IzMF9vdGcwPjsKPiA+ICsgICAg
IH07Cj4KPiB2Y2Npbl81djogdmJhdDogcmVndWxhdG9yLXZjY2luLTV2IHsKPiB2aW4tc3VwcGx5
ID0gPCZ2YmF0PjsKPgo+ID4gKyAgICAgICAgICAgICB2Y2M1djBfYm9vc3RfZW46IHZjYzV2MC1i
b29zdC1lbiB7Cj4KPiBib29zdF9lbgoKSGksCgpUaGFua3MgZm9yIHRoZSBzY2hlbWF0aWMgcG9p
bnRlcnMuIFdoaWxlIHJld29ya2luZyB0aGUgVVNCIHBvd2VyIHBhdGgsIEkKYWxzbyBub3RpY2Vk
IGFuIGlzc3VlIHdpdGggdGhlIG1vZGVtIHBvd2VyIHN1cHBseS4KCkZvciB0aGUgVVNCIGZpeCwg
SSd2ZSByZXdvcmtlZCBpdCBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpYzoKLSBBZGRlZCBhIGB2
YmF0YCBmaXhlZC1yZWd1bGF0b3Igbm9kZS4KLSBBZGRlZCBgNXZfYm9vc3RgIChWQkFUIC0+IDVW
X0JPT1NUIHZpYSBVMTYgYW5kIEJPT1NUX0VOKS4KLSBBZGRlZCBgNXZfb3V0YCB0byByZXByZXNl
bnQgdGhlIE9SLWVkIDVWX09VVCByYWlsIChCb29zdCB2aWEgRDUwMDIgKwpWQ0NJTl81ViB2aWEg
RDE2KS4KLSBDaGFuZ2VkIGB2Y2M1djBfdXNiMzBfb3RnMGAgKFVTQiBWQlVTIGxvYWQgc3dpdGNo
KSB0byB1c2UgYDV2X291dGAKYXMgaXRzIGB2aW4tc3VwcGx5YC4KCkZvciB0aGUgbW9kZW0sIHRo
ZSBgdmNjM3Y0X3JmYCByZWd1bGF0b3Igd2FzIGluY29ycmVjdGx5IHN1cHBsaWVkIGJ5CmB2Y2Np
bl81dmAsIHdoaWNoIG1lYW5zIHRoZSBNLjIgQi1LZXkgbW9kZW0gd291bGQgbG9zZSBwb3dlciBp
bgpiYXR0ZXJ5IG1vZGUuIFRoZSBzY2hlbWF0aWMgc2hvd3MgaXQgaXMgYWN0dWFsbHkgZGVyaXZl
ZCBmcm9tCmB2Y2Nfc3lzb25gIHZpYSBhIGZlcnJpdGUgYmVhZCAoQjEpLiBJJ3ZlIGNoYW5nZWQg
aXRzIGB2aW4tc3VwcGx5YCB0bwpgPCZ2Y2Nfc3lzb24+YC4KCkknbGwgc2VuZCBvdXQgYSB2MiB3
aXRoIGJvdGggZml4ZXMgc2hvcnRseS4KClRoYW5rcywKQ29pYQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
