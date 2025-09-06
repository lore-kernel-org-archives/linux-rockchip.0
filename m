Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BCACA1012
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 11:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtQ66+XYkhY/gQj3/DfLrGTy1upZV8VGDrifSIi//dE=; b=UTVR35L5Tiy6bo
	/HITJH5+GXRbVaIvfMnlgPMFzg3wdPdQEcM9YMH5T5yZ5FVm12UN6k2/AVshXux2D3NcIuae8ygK9
	D63N1C7oLohG5COKbZ6UBKjrec1OIffccRJGmLS2dmNHRPFwMCet4L0s35cGRRpN320mIyJH5dkDR
	w2H84DFOI0u7LVXICf5eT8VrOYjGCQpgdy8a5uzCKS7nZtVNa8DzvwiKWdUXZ1udjXEtxsV4Al9Ie
	mheu3bp/1MuLdHSj3AfC21v3Mc+6diinSc87s7bjHhccx3e3L6je4tpheLowYrtKqtnSBoBTd0Ul3
	Lg781Gt5OQVQ6L5n+EqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uurID-00000007hXR-2WaF;
	Sat, 06 Sep 2025 11:41:17 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uurFO-00000007hLx-48bF;
	Sat, 06 Sep 2025 11:38:24 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so14143715e9.0;
        Sat, 06 Sep 2025 04:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757158701; x=1757763501; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYdBh8HqFVUTCDaCvvuGcXy1H5xtNbStwBTR5IHmnb8=;
        b=fW0G+iz62O1uw5Mt2gw0vY8qIAWiDYn/cOhagAbiNgNkz1paLO9gS4b8YtjmR7BD4w
         VTtAb3qSQ+fAg/4lt+MwM2n/XMJhtW9NvCfpdq7w29cX+mPDhM2hhrxbWNMbUJ0IHQmx
         VG6fNwgAZHxzlGOfsVU+ISfSXbkwAR/MxZEU6bnochKcpMFyFKbnNQHF5+pCev12KZpf
         CIlqQTU2/1WUB/w0XQhAZ3a+iN+vMlF0h7Tqo3fsZvCXh5Oi0kXNu2btb0YRDtFDWu1i
         QkH8CxSHw8MC/D5aCrouOgyLyKv8S2+vdLmJiZ0tSjPuK2iAs+LTNdHotfFlil4mJ0Eq
         cq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757158701; x=1757763501;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OYdBh8HqFVUTCDaCvvuGcXy1H5xtNbStwBTR5IHmnb8=;
        b=QShrWoPWsF3CTle3ibdmN/4jH9mYpl2Kr3cgDVbKooYXsYiFrJAM26M34xfnALfX6p
         etHyDvUbhJHQx6+jS125EqJBDDHKxhJgP2x5NcyEBoX33WJmE8WurgViI3zl0aS54B/0
         nBns372Juxn73AkwmluCn7ow+SaGii3WCdHrU1agxxvlEqusoEaFwG+Cl8o0LIuOVPXo
         sUWQHRMp4H4vM/d8zW2p1DNGecx94tSDp/PQlPxsGeFxD27Lzv6rp46RsEhu4JECCzM1
         m1XqXFedJp6qjwwgzz7uzoHXPR33pyRmue+sN3f4vQw3rn85oZibjXBqZ5ki0BqI8ZVN
         Uc6g==
X-Forwarded-Encrypted: i=1; AJvYcCUxSCqxK1fJ9lv5W8ikJrQB/dxHVJyxBFSJCB7OodRY/l4cgTcVQStQTGa4IoJHck6qIMNdsBsWJK3L4BXjOv65@lists.infradead.org, AJvYcCVJ/WMABbczU+8RTWtoOZL2AFgXOiSyLazkAJ8rZ8LZbnetTsVsPo0A6Gmn0nH0S+VMyY8XQapy4u9EcxIDI54=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywnr3olu31uYsFJRwPHRBkoyTK7f5F9y4Bt0suNtg3OM0iNGFeR
	ZAzwJyMOBBHxabf2dQulJuAOk/j9jrzYiSjoWPQ+TOrDILY/MxBH8qQ2CO6//fWX
X-Gm-Gg: ASbGncsuilkrtA9GtZTBk3/ieoZz3ubOjGHTGXtpSvkHxhRitAkbl3xZqFenA/CvUZK
	CnwBBmpQ0+J0nPvoIpl0cBJXYF0NMQPN1vUYYPvlmPBIKOU9DqYswknmBzpcyydX7KDHW6Hnx30
	KJg3BrYbU/syvOdSSx6jthoErj169BV2sMqd1rX843sWAhjSVel0xMMA5LAn+THxW+Pv357ka4Y
	llt1ACg4igu1SYS0q19yh9o1wNQXCozIEtdWSa9Y/mlPqiYOabxGBZuz9x954pQl8Six1L2bBTj
	dtnp7oUBtOYHXVX3afsFWzXd6okWrQ5ivoKvXZpSiIJYHw8IG2AXpP9xMbc4UikA1NWNdTEmjge
	jAzf2LgIhaLOUyCVLv6f9udzsui5g9JtAI5tYgqzxKyNW29s=
X-Google-Smtp-Source: AGHT+IEpZhQKNYrVkTK3+mcth15u3ClT4pnjzS//5juTYMF8ueBViMJs+dSUMoUZqlbI5Gwl7TP02Q==
X-Received: by 2002:a05:600c:8b6f:b0:45b:86bb:af5f with SMTP id 5b1f17b1804b1-45dd5b32671mr56405465e9.6.1757158701184;
        Sat, 06 Sep 2025 04:38:21 -0700 (PDT)
Received: from smtpclient.apple ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d95df59e50sm19543645f8f.23.2025.09.06.04.38.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Sep 2025 04:38:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: add GPU powerdomain, opps,
 and cooling to rk3328
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20250906112030.1829706-1-christianshewitt@gmail.com>
Date: Sat, 6 Sep 2025 15:38:06 +0400
Cc: Alex Bee <knaerzche@gmail.com>
Message-Id: <3EC81CFB-7BA3-4AA5-8F1B-8E55C265338E@gmail.com>
References: <20250906112030.1829706-1-christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-Mailer: Apple Mail (2.3826.700.81)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_043823_026893_7459B253 
X-CRM114-Status: GOOD (  11.62  )
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

Cgo+IE9uIDYgU2VwIDIwMjUsIGF0IDM6MjDigK9wbSwgQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0
aWFuc2hld2l0dEBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IEZyb206IEFsZXggQmVlIDxrbmFlcnpj
aGVAZ21haWwuY29tPgo+IAo+IEFkZCBHUFUgcG93ZXJkb21haW4sIG9wcC10YWJsZSwgYW5kIGNv
b2xpbmcgbWFwIG5vZGVzIGZvciB0aGUgTWFsaQo+IEdQVSBvbiB0aGUgUkszMzI4IFNvQy4gT3Bw
LXRhYmxlIGZyZXF1ZW5jaWVzIGFyZSBzb3VyY2VkIGZyb20gdGhlCj4gUm9ja2NoaXAgTGludXgg
djQuNCB2ZW5kb3Iga2VybmVsIHdoaWxlIHZvbHRhZ2VzIGhhdmUgYmVlbiBkZXJpdmVkCj4gZnJv
bSBwcmFjdGljYWwgdXNlIGFuZCBzdXBwb3J0IHdvcms6IGtlZXBpbmcgdm9sdGFnZSBhYm92ZSAx
MDc1bVYKPiBhbmQgZGlzYWJsaW5nIHRoZSA1MDBNSHogb3BwLXBvaW50IGF2b2lkcyBpbnN0YWJp
bGl0eSBhbmQgY3Jhc2hlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hl
QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gSGV3aXR0IDxjaHJpc3RpYW5z
aGV3aXR0QGdtYWlsLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gVXNlIG9wcF90
YWJsZV9ncHUgbm90IGdwdV9vcHBfdGFibGUgdG8gZml4IGR0YiBzY2hlbWEgd2FybmluZ3MKClBs
ZWFzZSBpZ25vcmUgdjIsIEkgbWlzdW5kZXJzdG9vZCB0aGUgcmVuYW1lIGFuZCBzaG91bGQgaGF2
ZSBsZWZ0CmdwdV9vcHBfdGFibGUgYW5kIHJlbmFtZWQgb25seSB0aGUgc2Vjb25kIHBhcnQgdG8g
b3BwLXRhYmxlLWdwdQoKSeKAmWxsIGZpeCB0aGF0IGluIGEgdjMuCgpDaHJpc3RpYW4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
