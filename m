Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C54A8C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1ZM/sdBEnu2+FJFWudLuqBJohKbAJFaOMblWPiufGI=; b=HYLHovKKjaDxAE
	/KFK8pLjJWrYPt3isrxUAhAkGrBVTU5RMEQ6fnIv4CZEEdWyUdXvHyvD4O3FFs/q1k8kT2LSlsElN
	klS8CVZ38RkJ09fVvN3LfKhg0DkWOykJE3h+6+57U4pINmHoL6oInKBs0EUTtsuhefgEVfIq13ATj
	sA27WNdLDkbnxdE7uB1s3JCv869LyU+PPPiV/0qppHoNVr5gERXf+bnywf81oTwTgwdax6Zt6klM+
	9QX1dSDwT+aw2SUN6UQd3xrfPtlhDy6hH3DDZVevalf0ksDkq74GM4RjRqQTXHoqN/KodK0BZETH3
	kYvVm3mUcGQ/xUoyQTxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80wq-00GDrp-K7; Wed, 21 Dec 2022 15:24:00 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80wR-00GDNh-Dg; Wed, 21 Dec 2022 15:23:36 +0000
Received: by mail-qk1-x72c.google.com with SMTP id c9so6928502qko.6;
        Wed, 21 Dec 2022 07:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUXeKrsZn4EDklCtcl9IwuZ+sDDVGfdsHNn3PCdSLec=;
        b=mfk3AhkaAgAN7hCtsc00tDgCYjhBWripOGsjsOOCeqRPm57hg9ZTlxqkFAg4zfFJ8w
         8mDM4psrSudUT/NFgyhBzLB5U6+YlMbZAX5fWZHIgjeB2kODGPL23oAXXr+q/z7rUlVs
         v+8s2IFZd5HULFp0LDSlTXKZxInAm1u87//cuVMJf3LvEwMqeY6XN5dw+dY3Gs7+rSCi
         XweGlE/JXjGhxgFPsFCrZXGnrtWfp2/2R8lv1Q7iNzpG6nzRk1aNUsxCELuzruIO7a2w
         BDIf8FsLFc7DI0R9KQg9JhzcOdlFMPgVESxP8n7Bem9ayaHZSEt2xJU2u5hfjTWMhELd
         8qVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUXeKrsZn4EDklCtcl9IwuZ+sDDVGfdsHNn3PCdSLec=;
        b=UIdENnxwowklhTS72iUI3Ii7+BMrxJtcsmV52Tjc41TorhIbLVSNMpBr570oYN8gZ2
         SvdmZ39xMdWcfU4dTaoZKpux8k7rSK1Av7f+9UqSWnyiWzf9+rxFszXOKcuGhAxu6uV8
         O69EB/pP3dQOD9uwBhbWYTq026yHaWO2A3YzTiITvb6eJYmz/XOIiNMb4T9Xhs+kU+oE
         GTZeZgNYTo5McZjBYNQrWeeqlFJc1PBRwiNWSBtWlCfBsEznmJONVaQnGPrqstJHGT1L
         HDnYZYFvdIgd6+v4NmrKJAnzccxJMRrIkWqL7ADltq5qfpMzqk3QCAfK1oHpx5USnYJj
         Vy8g==
X-Gm-Message-State: AFqh2krUio3dq9uPnOmjfJJpufNqfYKYNsLO27TV8VMhIFrRAKVFFnj6
	M5AAl6fA01X4GyZzQQhbW0eHYDCNUQlB5URJwnM=
X-Google-Smtp-Source: AMrXdXt4dGRRkPaXQf/5uLyqwJxqdWNQrklT0RU9ZuU4lr+pjq/gAtre4l9m6yprTV0xPFmzqwJYaICOatCTzK233ns=
X-Received: by 2002:a37:b93:0:b0:6ed:d040:c175 with SMTP id
 141-20020a370b93000000b006edd040c175mr70004qkl.536.1671636213283; Wed, 21 Dec
 2022 07:23:33 -0800 (PST)
MIME-Version: 1.0
References: <Y6MkcVIpEaWrTrsS@VM-66-53-centos> <Y6MksLH9POLt6UTI@VM-66-53-centos>
In-Reply-To: <Y6MksLH9POLt6UTI@VM-66-53-centos>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 23:23:21 +0800
Message-ID: <CAMmci2UP+oagyQtxZ+9FmDrfDHhhD0Mf5xdgBSnO+iFF1nZb+w@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	DHDAXCW <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_072335_518436_747E54A9 
X-CRM114-Status: GOOD (  12.11  )
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

U29ycnksIGZvcmdvdCB0aGUgYEZyb21gIGxpbmUuCgpZdXRlbmcgWmhvbmcgPHpvbnlpdG9vQGdt
YWlsLmNvbT4g5LqOMjAyMuW5tDEy5pyIMjHml6XlkajkuIkgMjM6MjLlhpnpgZPvvJoKPgo+IEZy
b206IERIREFYQ1cgPGxhc3N0cDUwMTFAZ21haWwuY29tPgo+Cj4gQWRkIGRldmljZXRyZWUgYmlu
ZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgRW1iZWRGaXJlIEx1YmFuQ2F0IDEuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBXZW5oYW8gQ3VpIDxsYXNzdHA1MDExQGdtYWlsLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBZdXRlbmcgWmhvbmcgPHpvbnlpdG9vQGdtYWlsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gaW5kZXggODhmZjQ0MjJh
OGMxLi4wNThlZDcwN2YzY2QgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gQEAgLTk1LDYgKzk1LDExIEBAIHByb3Bl
cnRpZXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiBlbGdpbixydjExMDgtcjEKPiAgICAgICAgICAg
IC0gY29uc3Q6IHJvY2tjaGlwLHJ2MTEwOAo+Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEVtYmVk
RmlyZSBMdWJhbkNhdCAxCj4gKyAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAtIGNvbnN0OiBl
bWJlZGZpcmUsbHViYW5jYXQtMQo+ICsgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTY2
Cj4gKwo+ICAgICAgICAtIGRlc2NyaXB0aW9uOiBFbmdpY2FtIFBYMzAuQ29yZSBDLlRPVUNIIDIu
MAo+ICAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAgICAgLSBjb25zdDogZW5naWNhbSxweDMwLWNv
cmUtY3RvdWNoMgo+IC0tCj4gMi4yNy4wCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
