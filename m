Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13F88C5B555
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 08:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChRlQ1k7ANJyqpswnYvIH3LO2al596kGpRiAF+EcnQc=; b=yE+45obGIFAj1Z
	/PtP23c2KWSH/z8hd0Z4Wax8k/TS7l3acJCg8WL3z4hZUxpko7FOTHQKkypaTDlLiVYU1N6jIXl7b
	irB6/Sadwyi0zbi/9x5tigNE6YEZ8e9T50UrioZn3p0+0ui7Rlb6k9vvoGNW1tk/wh2LWr1Hh9P9U
	/DBctL/2EBxyO67Xz6alzSDzfPldVpYnaDEoN89GekXhPrNPvKIuc1eoDrQe0lhukNwYOQQgT6Anb
	IulWmdpNaTbI+bcHgKLwuHV48veSENuJdAAWBylyIZb+MzLHp2oBVV+YvXY65LDPAY7MpYN4yLoTI
	2Ile0xSoiJt92Es3xlCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZ6X-0000000FJC1-1aW7;
	Thu, 29 May 2025 08:59:13 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKYeT-0000000FG1m-2Bgs
	for linux-rockchip@lists.infradead.org;
	Thu, 29 May 2025 08:30:14 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-73bf5aa95e7so420431b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 May 2025 01:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748507412; x=1749112212; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4sefdUaHctF5zUkiiv0Nf2lC1NZKFwYYRdayYoyFIgE=;
        b=GVMID/DO73u+2+yMthSEtJA0IRUqphy7GbVTBJiNvlYKmWLyZKtytVd1ppxXqUxpRG
         rIRinPc2aYUg9rZr+8/H7/CGOYLBI1mtXx88TS9VTIvFR1JD4g879EAA6hGP2tbvPIMF
         igoBAqABvEGpkQAstsm3sXkb+JRI/sdajOcUKiFGoE780roQ8I+XReki73qhYO4hjBEP
         5iWdGR0m/fWJ3GqdfFQS5VWsmuyuEt+nehcYQW7PvsO8QYK5DWqhu6ik0KETozjS0q5l
         AkP7RI4SVcNVjuZeGvPXsCirq0XtZ2co5GV8Tp5a5gOoE/Ow3gIw1KaV2N5ttts8Etk2
         BQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748507412; x=1749112212;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4sefdUaHctF5zUkiiv0Nf2lC1NZKFwYYRdayYoyFIgE=;
        b=pcZwfwzlwRbtbYwJ7b1AEvHbOM4f6FLx6xG8nL4IMScnI/UV9WVvI+dqxE/Y0kOk1Y
         BI/BBDxUHYlStlR4NFHXs7LyBSr6HgJaoYIfE0XnCVMcvGM0+OFZsTyi2SY9gHmPI3c4
         i03MXbNCSXka47sRHaWc7kVvE/dZH1lB/DxgIDdKmk3GneixSKQ24eSYWRGAsaTlHShp
         A2uRJacV5IYOrh/IV9chY+SZ8JCigwIdNFet79aWJc0PsF5X2sj/Whe+kCdqLyskVTHo
         B4YFFtEabbO45ZH5EpOq32eKMvrsIT0+HCAHt38657j9YpOC8WTLyZSu48Gjc6J9dmDc
         XcqA==
X-Forwarded-Encrypted: i=1; AJvYcCX4meCw7t80XwjMz1b0kAl1iJMo8BbiWHfbgaQV5J0z7emn6rH7do0RzSb4/olr4uIUlZTFWvs2Bn7nEhnOBg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxfme3Lo6216s/4YpEfX3KtvBjy5JQG9DD4QAqz+8zEGLyC9hK0
	zu99X3Irb1IdxSBYQUk9pIxkchC1LF80F+iq/yIfBtxxS1PQMilw9m7k8x2064KzSA==
X-Gm-Gg: ASbGncsiw6hKMzRGa9JQV2RvkoVS+zvaRCkIO3pzpFJh8T5eXPNSkXVa1MS6ArkWkWd
	6sh+EzrwHXRh8JKu4WOxQ+968RxpO2UEuf+rguqj70RcCrsuGyQPSqx7en/1CaTYdFBxAStG0fE
	QdWGS+Ot81cydyA7RdAaooLW4Kc8PXuLYmj2RTIGJxfLj3CoJHosNqKxTo17by9UTvakZ6OCS8y
	+lOnDQKFEC7/vGp5EzqPbR2JXRM3FzhtAQBtxyNGgSXNgumSwfskfS76GKZdjIBA54vS2C6CBVO
	Pb4VdsM6XgvMLmB8QiK1XoflS2Spjj+TIZ63Kx95erbYHwn9ybVZ08/9GliWHg==
X-Google-Smtp-Source: AGHT+IF6wbdIM8c2CjcX/ocU3SdYeIxoMjW1IacP2Y1Yyeyofoj9C++nm+2SB3Ttqixw0fc2TFEcVA==
X-Received: by 2002:a05:6a20:c909:b0:1f5:93b1:6a58 with SMTP id adf61e73a8af0-2188c210411mr31111245637.8.1748507412113;
        Thu, 29 May 2025 01:30:12 -0700 (PDT)
Received: from thinkpad ([120.60.62.212])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afff727bsm828466b3a.161.2025.05.29.01.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 01:30:11 -0700 (PDT)
Date: Thu, 29 May 2025 14:00:07 +0530
From: "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>
To: Wilfred Mallawa <wilfred.mallawa@wdc.com>
Cc: "kw@linux.com" <kw@linux.com>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "cassel@kernel.org" <cassel@kernel.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] PCI: dw-rockchip: Delay link training after hot reset in
 EP mode
Message-ID: <hd5jw7d2n6kblxmyowvbikhrngbwmca4vh6wft4g56wfayiwo3@ygfap7z5lbdm>
References: <20250522123958.1518205-2-cassel@kernel.org>
 <93692bd09d8515da1506fe89b82caf91ea1012f2.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93692bd09d8515da1506fe89b82caf91ea1012f2.camel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_013013_567959_81A655FA 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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

T24gVGh1LCBNYXkgMjksIDIwMjUgYXQgMDg6MjI6NTFBTSArMDAwMCwgV2lsZnJlZCBNYWxsYXdh
IHdyb3RlOgo+IE9uIFRodSwgMjAyNS0wNS0yMiBhdCAxNDozOSArMDIwMCwgTmlrbGFzIENhc3Nl
bCB3cm90ZToKPiA+IAo+IFtzbmlwXQo+ID4gwqAJLyoKPiBHZW50bGUgcGluZyA6KQo+IAoKUGxl
YXNlIGdpdmUgYXRsZWFzdCAyIHdlZWtzIG9mIHRpbWUgYmVmb3JlIHBpbmdpbmcgdGhlIG1haW50
YWluZXJzLiBBbHNvLAp0aGUgbWVyZ2Ugd2luZG93IGlzIG5vdyBvcGVuLCBzbyB0aGVyZSB3b24n
dCBiZSBtdWNoIGFjdGl2aXR5IHVudGlsIC1yYzEgaXMgb3V0LgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
