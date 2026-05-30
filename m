Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E97CD5BD0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 16:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cj8J3EBQ03JI9DMDisynDxAjDROYNkL4nZYDMA5VdEA=; b=EWYH8AwLNxh3bN
	PYuBtPq8eOSBv+mTpqD2zo5nf1PNPChIWE+A288Yeuom+Yu4MCnMnUA4DECe35pLH49fxzhJ0aMU9
	p2FEAxOAHx1q2FKcdQcVGC5h67NGFpD5DBXlqJxmN06ImadueYQDVnp4raSU+qEu9PXoEF6EdT7Q2
	MIuvVJinU/XHWgC/6oxCtwFDVigNBTEKl3iokcX09Z6+5zSpZP92z+JHNO+Zjs597brPWAybAMOLF
	Sl4WPuxLrPizitr4Pc0p9qVb5vDzhVHmmwTEg8t0hFvB9Hzmr+A7a2aT73ljgfgcMiEAvOyif4eNY
	g59NfiSsubb6y8TJm53A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMFY-00000008uh1-1SV3;
	Sat, 30 May 2026 16:09:24 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMFV-00000008ugI-1TDk
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 16:09:22 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4891e5b9c1fso128124795e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 30 May 2026 09:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780157359; x=1780762159; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c+oE8zzIOS3Se+b/rUAfcpZ/DI7FVtS/AJEmeRtHYxE=;
        b=lec0btolFoq3wZuxouNZREoAK61Xk1tuN+Ghgp33Uv89hHwiWOgx3cwXrNUPNAxIrb
         QbzZaJ/kz3hCKzz3tofRGmKfD84NRxQx1vXr6NJhHxsW7SN39YARoMpyDh0kg439/KDs
         JoaRGKUhry8TzoWbW4xrvsbP9D+MTZFHEYF0eXlpaiy2VwaVwfqDLfwGiBXfS2NnqMVo
         Ls2yC0DT7ccBZ+3qNayjK/cb1mXoQvZwIL+FWAZ9RtiCwPW40Ef6aypNRcoqOQXtXb6q
         yeqRuLFVo4w1VdyF18634EilbSSqH5yqD2QEdDw+umqaocIMIev38G2Lcb7FT53s+wYk
         kYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780157359; x=1780762159;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c+oE8zzIOS3Se+b/rUAfcpZ/DI7FVtS/AJEmeRtHYxE=;
        b=GJy5mPIgS2a/6EidyNTMtihxydNllYA32JB0Rfh1kJVzqH4C6y/g+Ov5P0RdfqMYm1
         0XoFHQrCRrMXG8RwbUcXrVo0z+e38PQTsurK/oiC4lK5Qzt7fQ6s27FByIk87A5kJTIV
         zvXPxcW4NYlxx7gyi7qUIJr9SuQSTt/w+GIrDKZ0GLqD6NGtL8zRbB49OMiVeWvcjcSP
         JQUIx/XvDEtzwiE60Eh42dS0TMadSOFu9AFfOqX0VhVDBbCVgJWd6SeCmf/V4zH4j1i5
         fpuTVmSWp6y+F5UQhRjF3MmvxJk/LIRtRddwygPz9dkr3CTjD8PaZxvcAb2hgRXpozgJ
         QD+g==
X-Forwarded-Encrypted: i=1; AFNElJ8izkmyPav54Yn3NsUnRREFSc6lQ3HBo5FD3dF5V0JIwEgEp5+0b67v6jbRG3LZt2Puc/k1aUgtnfOSn1OeuA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwAzNxFQtvi97LLzuIrFmC4kCuzqJCq3ftUJJgxvWYm6PkzimR8
	poqnG7C35nVqGGzXJ20vo7Ns8E0gK1ymy356DfPjC+z+CoyppyfiPVnl
X-Gm-Gg: Acq92OE9XFBBufGweMAiOk8NoxubQ4liOXpHJJqkYhPEloKkcwwpkKhTB//sWrlCqXQ
	tT9PBc3+JgjssWWzLaFghZi8EJVC5QB3stmGzY9gKVOyHUJgAoAH3Q12kcaL110o9pmFdVyzqd1
	Z6Fq5M+reGQq+OZoz64BHSXhQ0coHz9YSgh+AaP17DUzJ/jef+CJ4jpNdHYVdyNWnoauoQFkKUn
	DOMW5VCiTciGjzSaRbRUcBYxEGnOK3hKaCONYtcoiqQndjr8wi6uaML8dhWIpAub88jjFJoPvY/
	wJ7qLsmLVvHkB0RlP0PyaZfU7Qq9pvXoGb7DKrg5TFLgq/LK3WnE43lunlrWBhs9AogHr/bs9om
	LPil5Dd7mmFNFTLoUQb1dZ7c7nH1v5pivYkdJdOzVsRGXwAO0E44dmZq9sFN7oneg77oz8rWfJf
	Yo/eeEoiLRUObABl85o2Di6ct+Ti+7VFqTEAW3tQ==
X-Received: by 2002:a05:600c:1d86:b0:488:8bdd:cfcc with SMTP id 5b1f17b1804b1-490a28ab3d7mr81162665e9.0.1780157359207;
        Sat, 30 May 2026 09:09:19 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909c110243sm55610615e9.6.2026.05.30.09.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 May 2026 09:09:18 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH] clk: rockchip: rk3588: Remove SECURECRU reset definitions
Date: Sat, 30 May 2026 17:08:14 +0100
Message-ID: <20260530160827.3453582-1-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_090921_435662_93C44527 
X-CRM114-Status: GOOD (  11.59  )
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

T24gUkszNTg4IHRoZSBTRUNVUkVDUlUgcmVnaXN0ZXIgYmFuayAobWFwcGVkIGF0IDB4RkQ3RDAw
MDApIGlzCmV4Y2x1c2l2ZWx5IGFjY2Vzc2libGUgdG8gdGhlIFRydXN0Wm9uZSBmaXJtd2FyZSBy
dW5uaW5nIGF0IEVMMy4KQW55IGRpcmVjdCBNTUlPIHJlYWQgb3Igd3JpdGUgdG8gdGhlc2UgYWRk
cmVzc2VzIGZyb20gdGhlIG5vbi1zZWN1cmUKTGludXgga2VybmVsIChFTDEpIHRyaWdnZXJzIGFu
IGFzeW5jaHJvbm91cyBidXMgZmF1bHQgYW5kIGEgZmF0YWwKc3lzdGVtIHBhbmljLgoKVGhlIG5v
bi1zZWN1cmUgQ1JVIGRyaXZlciBpbiByc3QtcmszNTg4LmMgY3VycmVudGx5IGNvbnRhaW5zIDE3
IHJlc2V0CmVudHJpZXMgYmFja2VkIGJ5IFJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VULCB3
aGljaCBjYWxjdWxhdGVzCm9mZnNldHMgaW50byB0aGlzIHByb3RlY3RlZCByYW5nZS4gVGhlc2Ug
ZGVmaW5pdGlvbnMgYXJlIHVucmVhY2hhYmxlIGluCnByYWN0aWNlIOKAlCBhbnkgZHJpdmVyIHRo
YXQgY2FsbHMgcmVzZXRfY29udHJvbF9hc3NlcnQvZGVhc3NlcnQgb24gb25lIG9mCnRoZW0gd2ls
bCBmYXVsdCB0aGUgc3lzdGVtIOKAlCBhbmQgdGhlaXIgcHJlc2VuY2UgaXMgYSBzb3VyY2Ugb2Yg
Y29uZnVzaW9uCmFuZCBsYXRlbnQgZGFuZ2VyLgoKUmVtb3ZlIHRoZSBSSzM1ODhfU0VDVVJFQ1JV
X1JFU0VUX09GRlNFVCBtYWNybyBhbmQgYWxsIDE3IGFzc29jaWF0ZWQKcmVzZXQgdGFibGUgZW50
cmllcy4gUGVyaXBoZXJhbHMgd2hvc2UgcmVzZXQgbGluZXMgYXJlIGNvbnRyb2xsZWQgYnkKU0VD
VVJFQ1JVIChjcnlwdG8gY29yZSwga2V5bGFkZGVyLCBUUk5HLCBzZWN1cmUgU0RNTUMsIGV0Yy4p
IG11c3QKaW5zdGVhZCBvYnRhaW4gdGhlaXIgcmVzZXRzIHRocm91Z2ggdGhlIFNDTUkgZmlybXdh
cmUgcHJvdG9jb2wsIHVzaW5nCnRoZSAmc2NtaV9yZXNldCBwaGFuZGxlIGluIGRldmljZSB0cmVl
LgoKTm8gZXhpc3RpbmcgaW4tdHJlZSBkcml2ZXIgaXMgYWZmZWN0ZWQ6IG5vbmUgb2YgdGhlIHJl
bW92ZWQgSURzCihTUlNUX0NSWVBUT19DT1JFLCBTUlNUX0NSWVBUT19QS0EsIGV0Yy4pIGFyZSBy
ZWZlcmVuY2VkIG91dHNpZGUgdGhpcwpmaWxlIGFuZCBpdHMgY29ycmVzcG9uZGluZyBoZWFkZXIu
CgpTaWduZWQtb2ZmLWJ5OiBEYXdpZCBPbGVzaW5za2kgPGRhd2lkcm9AZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL3JzdC1yazM1ODguYyB8IDQyIC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9yc3QtcmszNTg4LmMgYi9kcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9yc3QtcmszNTg4LmMKaW5kZXggYzRlYmMwMWYxYzljLi43YTg1NmRlNjRkOWUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL3JzdC1yazM1ODguYworKysgYi9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9yc3QtcmszNTg4LmMKQEAgLTE2LDkgKzE2LDYgQEAKIC8qIDB4RkQ3QzgwMDAg
KyAweDBBMDAgKi8KICNkZWZpbmUgUkszNTg4X1BIUFRPUENSVV9SRVNFVF9PRkZTRVQoaWQsIHJl
ZywgYml0KSBbaWRdID0gKDB4ODAwMCo0ICsgcmVnICogMTYgKyBiaXQpCiAKLS8qIDB4RkQ3RDAw
MDAgKyAweDBBMDAgKi8KLSNkZWZpbmUgUkszNTg4X1NFQ1VSRUNSVV9SRVNFVF9PRkZTRVQoaWQs
IHJlZywgYml0KSBbaWRdID0gKDB4MTAwMDAqNCArIHJlZyAqIDE2ICsgYml0KQotCiAvKiAweEZE
N0YwMDAwICsgMHgwQTAwICovCiAjZGVmaW5lIFJLMzU4OF9QTVUxQ1JVX1JFU0VUX09GRlNFVChp
ZCwgcmVnLCBiaXQpIFtpZF0gPSAoMHgzMDAwMCo0ICsgcmVnICogMTYgKyBiaXQpCiAKQEAgLTgw
Nyw0NSArODA0LDYgQEAgc3RhdGljIGNvbnN0IGludCByazM1ODhfcmVnaXN0ZXJfb2Zmc2V0W10g
PSB7CiAJUkszNTg4X1BNVTFDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfUF9QTVUwSU9DLCA1LCA0KSwK
IAlSSzM1ODhfUE1VMUNSVV9SRVNFVF9PRkZTRVQoU1JTVF9QX0dQSU8wLCA1LCA1KSwKIAlSSzM1
ODhfUE1VMUNSVV9SRVNFVF9PRkZTRVQoU1JTVF9HUElPMCwgNSwgNiksCi0KLQkvKiBTRUNVUkVD
UlVfU09GVFJTVF9DT04wMCAqLwotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1Rf
QV9TRUNVUkVfTlNfQklVLCAwLCAxMCksCi0JUkszNTg4X1NFQ1VSRUNSVV9SRVNFVF9PRkZTRVQo
U1JTVF9IX1NFQ1VSRV9OU19CSVUsIDAsIDExKSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09G
RlNFVChTUlNUX0FfU0VDVVJFX1NfQklVLCAwLCAxMiksCi0JUkszNTg4X1NFQ1VSRUNSVV9SRVNF
VF9PRkZTRVQoU1JTVF9IX1NFQ1VSRV9TX0JJVSwgMCwgMTMpLAotCVJLMzU4OF9TRUNVUkVDUlVf
UkVTRVRfT0ZGU0VUKFNSU1RfUF9TRUNVUkVfU19CSVUsIDAsIDE0KSwKLQlSSzM1ODhfU0VDVVJF
Q1JVX1JFU0VUX09GRlNFVChTUlNUX0NSWVBUT19DT1JFLCAwLCAxNSksCi0KLQkvKiBTRUNVUkVD
UlVfU09GVFJTVF9DT04wMSAqLwotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1Rf
Q1JZUFRPX1BLQSwgMSwgMCksCi0JUkszNTg4X1NFQ1VSRUNSVV9SRVNFVF9PRkZTRVQoU1JTVF9D
UllQVE9fUk5HLCAxLCAxKSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0Ff
Q1JZUFRPLCAxLCAyKSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0hfQ1JZ
UFRPLCAxLCAzKSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0tFWUxBRERF
Ul9DT1JFLCAxLCA5KSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0tFWUxB
RERFUl9STkcsIDEsIDEwKSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0Ff
S0VZTEFEREVSLCAxLCAxMSksCi0JUkszNTg4X1NFQ1VSRUNSVV9SRVNFVF9PRkZTRVQoU1JTVF9I
X0tFWUxBRERFUiwgMSwgMTIpLAotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1Rf
UF9PVFBDX1MsIDEsIDEzKSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX09U
UENfUywgMSwgMTQpLAotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfV0RUX1Ms
IDEsIDE1KSwKLQotCS8qIFNFQ1VSRUNSVV9TT0ZUUlNUX0NPTjAyICovCi0JUkszNTg4X1NFQ1VS
RUNSVV9SRVNFVF9PRkZTRVQoU1JTVF9UX1dEVF9TLCAyLCAwKSwKLQlSSzM1ODhfU0VDVVJFQ1JV
X1JFU0VUX09GRlNFVChTUlNUX0hfQk9PVFJPTSwgMiwgMSksCi0JUkszNTg4X1NFQ1VSRUNSVV9S
RVNFVF9PRkZTRVQoU1JTVF9BX0RDRiwgMiwgMiksCi0JUkszNTg4X1NFQ1VSRUNSVV9SRVNFVF9P
RkZTRVQoU1JTVF9QX0RDRiwgMiwgMyksCi0JUkszNTg4X1NFQ1VSRUNSVV9SRVNFVF9PRkZTRVQo
U1JTVF9IX0JPT1RST01fTlMsIDIsIDUpLAotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VU
KFNSU1RfUF9LRVlMQURERVIsIDIsIDE0KSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNF
VChTUlNUX0hfVFJOR19TLCAyLCAxNSksCi0KLQkvKiBTRUNVUkVDUlVfU09GVFJTVF9DT04wMyAq
LwotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfSF9UUk5HX05TLCAzLCAwKSwK
LQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0RfU0RNTUNfQlVGRkVSLCAzLCAx
KSwKLQlSSzM1ODhfU0VDVVJFQ1JVX1JFU0VUX09GRlNFVChTUlNUX0hfU0RNTUMsIDMsIDIpLAot
CVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfSF9TRE1NQ19CVUZGRVIsIDMsIDMp
LAotCVJLMzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfU0RNTUMsIDMsIDQpLAotCVJL
MzU4OF9TRUNVUkVDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfUF9UUk5HX0NISywgMywgNSksCi0JUksz
NTg4X1NFQ1VSRUNSVV9SRVNFVF9PRkZTRVQoU1JTVF9UUk5HX1MsIDMsIDYpLAogfTsKIAogdm9p
ZCByazM1ODhfcnN0X2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwgdm9pZCBfX2lvbWVtICpy
ZWdfYmFzZSkKLS0gCjIuNDcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
