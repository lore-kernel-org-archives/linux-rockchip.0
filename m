Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A347CF436B2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 15:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwnfBMXaVw7D0d2uXwTNfConCa0KOzbFSAj6vmU7rk0=; b=zX3x5mB3BCEOzo
	ALRw7j28czhOB4pRTfzRl+iryp8PYm7moR5U1VnWtiuiohrioMbwzDkDfLGVI3wTiaIkqOsQYEwR2
	PS7rlvgZsUPES2ySMwYDB2Sh9UY73ejg2Aj2haixXR9Jti921lRZnocr+qsylRXKEhK0Qm9y7xSvO
	j3yAeGF9T11V1/kVO93xwBofAfNp9uY5fhRgStoOCVsOXR7pLxPthUWce+Aris1amc9ey3ub+/V9Y
	R+wtT4ssSGJPLmq9tjTsx0BF3kIuuiou6OYPtmuP5xCtqomCV/tVT8UAzxDbVi8VOQoqJ5PPXM/py
	WYsDD96ZfVmsUbOKgzaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDkrX-00000004Bhc-13ag;
	Fri, 17 Apr 2026 15:12:07 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDkrU-00000004BfN-2N3N
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Apr 2026 15:12:05 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-43cfd1f9fd1so512495f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Apr 2026 08:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1776438723; x=1777043523; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c0h/bSzKrRDyDdmyG30auftZMv/S6b+0T+VipJS3jxA=;
        b=nrAM5JHg8gxjJhUtBs6pXjAMlIjnkw5oodZHLNlOqScUmGKrGa9PBTe9HXff3KoqHd
         vQ3yUwiwBFWnjQlZkSOqMpX/WDJp/x5z4tkWybZMGclgC5jSWsylroTaQlkO2DukwB1Q
         jq/ECyjwMaj9l5ZMasTHHuBBecoXF+G54xG5D1CuSA2Ly1mVPqLIIND3XihRL+igZQUj
         2NX23UKtAZEPbzAZjR5YANJkxAeTuHntYgAEkLdkLlOUVHBzCcZ0lYQ7H81fWOfoYpVA
         oRCX8Uw1ZeDEF3ehE+4g+7UgxkC0IrMeBXtf9lqveeryHLo8xPPYAjL6p3J0zxsL2wGs
         lYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776438723; x=1777043523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c0h/bSzKrRDyDdmyG30auftZMv/S6b+0T+VipJS3jxA=;
        b=ViQxVRvdpzmYS/lnEX+eGdrWXWfR97de4BIHccYTLlDXZX2qyWAZTamrXzH0aNBfJ/
         Nwp//yYxZYKXGtfgz7tchLYHSsqr3lAU/vyTqGIvBN0kLND45KhuKj04lUFn08M0xLEt
         rZ86u9iZDlEoyM4XC3GDJKOb8Q8S3WZNB7W8v7rLNh7Cx0vM4HsyHlGpDf36S/hiOvzE
         s1qGzWBXGeptdr/eQueuNKUBPcJJyE/jWdi1FxlVSMZdCcvCMkCqaFgdZW/gVm7fF7Vh
         LKaYMRdRbeBOxRscibtc5sXGwCEtYvBu+bNgJs8GRDh20ERO7cj54gP0M6e0bnL8clVq
         /2fg==
X-Forwarded-Encrypted: i=1; AFNElJ9dSjtVxcrS3RC8AdwiNZZhG9njD5UJbLAMGa0sjBEExjN32S4PYcB8gfWhRM3nDXnka0vsnuEbB+4Dq7dMrg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCrGtdvwMmz2rsYJdouuItgnMTIko0RbgFBMe3SQ9MHrGELkEh
	V+9sodWnDKQiBE9vA3jbikKkLZjRC8hK1dnNykiVO1YCzQSt76kHo6Njm7tR3lcrN8o=
X-Gm-Gg: AeBDievy337VzQR7XJnMwl4F6KfOvMxQnOSujXtGtMbs3j47ChjaeVWNQLzgQvxoclc
	pzlqgjNaeLjOK6WGZFHVXZ650tYtZNV2/YFnXXw+095bs0Pw73iJw0RIAZj5K8dcmyiPl96syk0
	iRaITngQiby/zN/rPCV5VT7jkJYvg9ep9Psi8FGkeWpr1fPqwP5tLClPeOtt3zkbP2IksQC8Yf2
	LPKLTneudW+7/n2BwYsP6KKeoh2Ulf+xVK6KEavQKefEC+VhKi91CMnILKWVsn6J0F6XerzC5yp
	X1OPCwZt+mFkfGu0gRb/nT9mFKgDEJCx+JLnGZUT0t1CKZpj6ILGWZ0jOMXUroo5U55Ie4st8/w
	Bnc3KwJsh2nhXEOh42X0Qy8VW8Dfla7qutyQFtJxniRB1CztHYb0Y2lkQbgPcHZ6zfolCMvdLmY
	UQwL7cg0DRP8ocv6Hv2FwxrrTNNgNoGeULZGZVThL75rQMe5qr9OISrXIVXjzQ2HtRlvaOavros
	OCjPgsKn0d54jDI
X-Received: by 2002:a05:6000:18a6:b0:43d:70de:1c68 with SMTP id ffacd0b85a97d-43fe3e08c35mr4827304f8f.30.1776438722860;
        Fri, 17 Apr 2026 08:12:02 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e591cesm7376426f8f.36.2026.04.17.08.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 08:12:02 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 17 Apr 2026 19:11:45 +0400
Subject: [PATCH RFC 2/4] clk: rockchip: pll: use round-nearest in
 determine_rate
MIME-Version: 1.0
Message-Id: <20260417-rk3576-dclk-v1-2-26a9d0dcb2de@flipper.net>
References: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
In-Reply-To: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: Pavel Zhovner <pavel@flipper.net>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1952; i=alchark@flipper.net;
 h=from:subject:message-id; bh=NvfvyU1IImSrCF3iQB5Qso5w+H1TNTTu2n7InPVjkh4=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQ+8t0mFK38Z9ft90/KpYsSdv70XXD10YenzgXaixSqJ
 vwM+vdKo2MiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTSMdYxYuDiFICpzipnZPiXM6nmzcpO/RZJe/8Jl6LLDT4zicyQ35vOmzlnyhXFdRGMDNM+vyo
 6x3zN912Ur3S2wqWjEzvDkpb/1XCwURZbUfi+iREA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_081204_620553_88AD14C4 
X-CRM114-Status: GOOD (  13.51  )
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

cm9ja2NoaXBfcGxsX2RldGVybWluZV9yYXRlKCkgd2Fsa3MgdGhlIHJhdGUgdGFibGUgaW4gZGVz
Y2VuZGluZyBvcmRlcgphbmQgcGlja3MgdGhlIGZpcnN0IGVudHJ5IDw9IHRoZSByZXF1ZXN0ZWQg
cmF0ZS4gVGhpcyBmbG9vci1yb3VuZGluZwppbnRlcmFjdHMgcG9vcmx5IHdpdGggY29uc3VtZXJz
IHRoYXQgdXNlIENMS19TRVRfUkFURV9QQVJFTlQ6IGEgZGl2aWRlcgppdGVyYXRpbmcgY2FuZGlk
YXRlcyBhc2tzIHRoZSBQTEwgZm9yIHJhdGUqZGl2LCBhbmQgYSB0aW55IHVuZGVyc2hvb3QKY2F1
c2VzIHRoZSBQTEwgdG8gc25hcCB0byBhIG11Y2ggbG93ZXIgZW50cnkuCgpGb3IgZXhhbXBsZSwg
cmVxdWVzdGluZyAxOTkxLjA0IE1IeiAoMjQ4Ljg4IE1IeiAqIDgpIGNhdXNlcyB0aGUgUExMIHRv
CnJldHVybiAxOTY4IE1IeiBpbnN0ZWFkIG9mIDE5OTIgTUh6IOKAlCBhIDI0IE1IeiB0YWJsZSBn
YXAgdGhhdCBwcm9kdWNlcwphIDEuMiUgcGl4ZWwgY2xvY2sgZXJyb3Igd2hlbiBkaXZpZGVkIGJh
Y2sgZG93bi4KCkNoYW5nZSB0byByb3VuZC10by1uZWFyZXN0OiBmb3IgZWFjaCB0YWJsZSBlbnRy
eSBjb21wdXRlIHRoZSBhYnNvbHV0ZQpkaXN0YW5jZSBmcm9tIHRoZSByZXF1ZXN0LCBhbmQgcGlj
ayB0aGUgZW50cnkgd2l0aCB0aGUgc21hbGxlc3QgZGVsdGEuClRoZSBDQ0YncyBkaXZpZGVyIGFu
ZCBjb21wb3NpdGUgbG9naWMgaGFuZGxlIG92ZXIvdW5kZXJzaG9vdCBwcmVmZXJlbmNlcwp2aWEg
dGhlaXIgb3duIFJPVU5EX0NMT1NFU1QgZmxhZ3MuCgpTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hh
cmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4KLS0tCiBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGst
cGxsLmMgfCAxNiArKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Ns
ay1wbGwuYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYwppbmRleCA2Yjg1MzgwMGNi
NmIuLmMxNDJmMmM0ZmQ5OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBs
bC5jCisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYwpAQCAtNjYsMTkgKzY2LDE5
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGxsX2RldGVybWluZV9yYXRlKHN0cnVjdCBjbGtfaHcg
Kmh3LAogewogCXN0cnVjdCByb2NrY2hpcF9jbGtfcGxsICpwbGwgPSB0b19yb2NrY2hpcF9jbGtf
cGxsKGh3KTsKIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfcGxsX3JhdGVfdGFibGUgKnJhdGVfdGFi
bGUgPSBwbGwtPnJhdGVfdGFibGU7CisJdW5zaWduZWQgbG9uZyBiZXN0ID0gMDsKIAlpbnQgaTsK
IAotCS8qIEFzc3VtaW5nIHJhdGVfdGFibGUgaXMgaW4gZGVzY2VuZGluZyBvcmRlciAqLwogCWZv
ciAoaSA9IDA7IGkgPCBwbGwtPnJhdGVfY291bnQ7IGkrKykgewotCQlpZiAocmVxLT5yYXRlID49
IHJhdGVfdGFibGVbaV0ucmF0ZSkgewotCQkJcmVxLT5yYXRlID0gcmF0ZV90YWJsZVtpXS5yYXRl
OwotCi0JCQlyZXR1cm4gMDsKLQkJfQorCQlpZiAoYWJzKChsb25nKXJlcS0+cmF0ZSAtIChsb25n
KXJhdGVfdGFibGVbaV0ucmF0ZSkgPAorCQkgICAgYWJzKChsb25nKXJlcS0+cmF0ZSAtIChsb25n
KWJlc3QpKQorCQkJYmVzdCA9IHJhdGVfdGFibGVbaV0ucmF0ZTsKIAl9CiAKLQkvKiByZXR1cm4g
bWluaW11bSBzdXBwb3J0ZWQgdmFsdWUgKi8KLQlyZXEtPnJhdGUgPSByYXRlX3RhYmxlW2kgLSAx
XS5yYXRlOworCWlmIChiZXN0KQorCQlyZXEtPnJhdGUgPSBiZXN0OworCWVsc2UKKwkJcmVxLT5y
YXRlID0gcmF0ZV90YWJsZVtwbGwtPnJhdGVfY291bnQgLSAxXS5yYXRlOwogCiAJcmV0dXJuIDA7
CiB9CgotLSAKMi41Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
