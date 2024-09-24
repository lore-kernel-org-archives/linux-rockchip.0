Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E6A0CF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/YdZ9mtGIo5syy9Qxlqh1SwOZo/mYJX873Uujbe+l8=; b=R/Ktsv9IKW3mr6
	FU08N1GIyjt+lEO7FQDdoiO5aK6qZW9blSelYE+nfszcX1MB6al5Fxr98EAWgyQd+xOlEaY/kg7RO
	+1MhML+Qv4G+RAZodCOd35yA/y7D6wYB6pUztRGuB51mTHZGPhf2BbHP4/5rvQQ/WerTju7Pe8jfR
	J/bNnXNNt/tGlbQQTE1Dy2fG1zzuLMr3eRi9oMzbUt/IHeU6bqjvXbydgURTZPayvEorNmKgcqBua
	Rsq5pvULdbIaro1JynI37bjmI6JXHnRPcvjO2vfrUGU1zwIRqyq7YybLE7xeQQuLGedxZt6vjgJNo
	2mOjsmK96tE2T956Xeqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st6SN-00000002XUj-0QhS;
	Tue, 24 Sep 2024 14:23:59 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st6Q0-00000002Wsz-2ebt
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Sep 2024 14:21:33 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-42cb0f28bfbso48390215e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Sep 2024 07:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727187689; x=1727792489; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dfQTsP0vA/xZ7wbPE4mzCRWLqRMSRVWs8MpYHZmYO04=;
        b=DJ7A9GXWBl903wXwrB4W0MnKclQ/mn1wr0OoovuGCOP8x0ixXQ6aGsOAyM8/25RsqP
         XyQJXL/HBr/ZB7wDlmpPMCmC3V4YoitFX2Lfg5zHZi3ae7vCwCtYfVRKZPFcLJx89ULZ
         UGKXEcQfkumcShDEnuW1x+SACcWuyeVgko5EI3gm8f2hrFV81DZqC5W27EYjMwKXGmuR
         bI5NVYklFdZqmCo6Ovq5PgIUuu1kjv4TBl+ruItS2Dni+zIT+uD0zsHXDaXJl+eivcER
         ZNDIIYjNBMhtyuMUCOleA44Xx150txCc7eXaNBrWelkjq+cj/T+YVzAsy1a3DaAl8LsD
         Gskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727187689; x=1727792489;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dfQTsP0vA/xZ7wbPE4mzCRWLqRMSRVWs8MpYHZmYO04=;
        b=Rm+HqsFEqimLncTEkbITSFNxMcODTmiI1Xy3cQEKcclS5poGuiaasxVNcqnhUO2YWM
         2+Dmc1k3LAaqdwU1do1VHeK2yjQe8SAvQ6gKeBylrnyhS9FLQtZ09cY6rHbcl4W1vaWI
         dN0MWf03G9eKAm7ce6tIFEtS4MW8OLGOR5++dLJM6joh5GL/x6BMRxapaLOEMenVyyUh
         RjHw8sHaGNIjXOo9NI51Se4pko7OHkXVCmEQaUZmqt/69PbVzbtH9FRYkupjpACDdk4G
         f6AgOPL1FXvm2E7BawA1BpJjCmnIlLb5ji474i1/HToLPVu94p/VdtajLWy58jxS/nX6
         rCcA==
X-Forwarded-Encrypted: i=1; AJvYcCUuDA3EwvclDAp9QzrQ1tat7CbpoGHjCwE7VT0HIv+I2i4CoFEA4RA/MUZBRCQVSrUWbjOCvpx3Y2IB7yhwCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOcM807jCyUblEIydGL5gkpWe2t+qitjaGXmyA1AXC/6d3uNf7
	X3R6ekra5wfCz01SI8yKTeolvsuU7nUw6tdpGkA3ea9irwfqg4Z1L7Aaw5geOA==
X-Google-Smtp-Source: AGHT+IHvYi5sE75KftIebO9vedcos5Z0ukc1YN0ZeK6gW61izK+suGuxOSBkOiwHtcrUCyrBSyEIZQ==
X-Received: by 2002:a05:600c:1d29:b0:42c:b309:8d18 with SMTP id 5b1f17b1804b1-42e7ac23136mr108548925e9.19.1727187689466;
        Tue, 24 Sep 2024 07:21:29 -0700 (PDT)
Received: from thinkpad ([62.67.186.33])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e75450ec6sm158091485e9.21.2024.09.24.07.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 07:21:28 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:21:27 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Chen Ni <nichen@iscas.ac.cn>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, heiko@sntech.de, cassel@kernel.org,
	ukleinek@debian.org, dlemoal@kernel.org,
	yoshihiro.shimoda.uh@renesas.com, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove redundant dev_err()
Message-ID: <20240924142127.4wi7rsndl76vtffk@thinkpad>
References: <20240918074401.2221146-1-nichen@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240918074401.2221146-1-nichen@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_072132_680950_4D6835E3 
X-CRM114-Status: GOOD (  18.85  )
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

T24gV2VkLCBTZXAgMTgsIDIwMjQgYXQgMDM6NDQ6MDFQTSArMDgwMCwgQ2hlbiBOaSB3cm90ZToK
PiBUaGVyZSBpcyBubyBuZWVkIHRvIGNhbGwgdGhlIGRldl9lcnIoKSBmdW5jdGlvbiBkaXJlY3Rs
eSB0byBwcmludCBhCj4gY3VzdG9tIG1lc3NhZ2Ugd2hlbiBoYW5kbGluZyBhbiBlcnJvciBmcm9t
IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKCkKPiBmdW5jdGlvbiBhcyBpdCBpcyBnb2luZyB0byBk
aXNwbGF5IGFuIGFwcHJvcHJpYXRlIGVycm9yIG1lc3NhZ2UgaW4gY2FzZQo+IG9mIGEgZmFpbHVy
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaGVuIE5pIDxuaWNoZW5AaXNjYXMuYWMuY24+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jIHwgNCArLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggMTE3MGUxMTA3NTA4Li4zNzcwZTU2NmI1OTcgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4g
KysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAg
LTQ1MCwxMCArNDUwLDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9lcChz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAJCXJldHVybiAtRU5PREVWOwo+ICAKPiAg
CWlycSA9IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKHBkZXYsICJzeXMiKTsKPiAtCWlmIChpcnEg
PCAwKSB7Cj4gLQkJZGV2X2VycihkZXYsICJtaXNzaW5nIHN5cyBJUlEgcmVzb3VyY2VcbiIpOwo+
ICsJaWYgKGlycSA8IDApCj4gIAkJcmV0dXJuIGlycTsKPiAtCX0KPiAgCj4gIAlyZXQgPSBkZXZt
X3JlcXVlc3RfdGhyZWFkZWRfaXJxKGRldiwgaXJxLCBOVUxMLAo+ICAJCQkJCXJvY2tjaGlwX3Bj
aWVfZXBfc3lzX2lycV90aHJlYWQsCj4gLS0gCj4gMi4yNS4xCj4gCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
