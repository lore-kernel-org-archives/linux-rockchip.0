Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CA5BD41D60
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 06:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqZjc0SEad6iiBuYQMFTfV7p06pEldGLOp201EkyiOM=; b=cTB034iR8M8eZc
	+nK4KHyIhx5ftAwkwsp5I7p0LfeiAhlrN57I2wthbjNgd4oKNQA5xRdmBiMUo7Sx0n/VUVBP78/Uq
	JecD5us9spp4TK+xU7XND9TlfUvVEoVyxO8nqgQkvEOL7qwDipiPxNVI6u0abzvrMnHOOly95I+4q
	RTbipLsuVSPPFDpxl9PEfJfnEJkH4klgNL8rxd1TQJQbU/dHjisVhAquYGOtSb28QasCiE/KKBmQc
	UCuZwLQl0Txd5qd5J9qzrBbTr3m9HbbfsvAo7J9kp0z4J8CgwEqRUt87clrAp+1mzuLuRgoNDjDwh
	FimZy5yRG/s4wq4/xLyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAkjk-00000002NAO-2Fwv;
	Tue, 12 Nov 2024 06:50:52 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAkdA-00000002MKn-1cDU
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 06:44:05 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-7ee51d9ae30so3823838a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 11 Nov 2024 22:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731393843; x=1731998643; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JPlc0iWn23rPv1Yelqqb+UADsrKyk5eLdXjS43qvnhE=;
        b=Aku96tzmvlanvPk7J+FTglbs8VOLvr5s0u5Kg3s3GBQc2V8tI8/YcgicD6w/Sqt4IZ
         xfs0uxeu+MCq1TOCuarXS15KcyZcMYda0qHiAnQqBqe4dWmwwlHu6ejsu1aUI/nBVYZi
         yLuRMwXLoskSLe+Sh45hsrOWQ4d2WX6kZi1bUgLiqPVEgKz8mLQK1KvdfPcmBQug9asx
         +QLLNDkxJ7uBNwNZZ26ZTby9TSu01uw1OCzrbTqcWingTUJzeHC4lEQqiMFIzCp0a1Qe
         Ral0ELLx3hh3TX0aOgwaR9LYC5eAe3XsuemZ2bkMONOImDNGLOuYEiXbdbQFyfnEpKh9
         97+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731393843; x=1731998643;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPlc0iWn23rPv1Yelqqb+UADsrKyk5eLdXjS43qvnhE=;
        b=UrKfL/lP6qPpXPPGC2Eea6zwZe8r6d93ni6u5P/5qjRgNuTcNlUp8kiVIp78KyRjR1
         mgo8CxLnjP8t9MNNaS1mK53xFHzNY50UZJHnrcTaeRqy0e8xPG+La6BZP5jJ0uL0Xv0N
         S4u8gQDpRkJUnOyTxiF35Xj0IA0Xeh6JhGv+wrkqdAY/uwnIQ3rHMJajRgikLiU2vm/4
         mR88yYBih/pDy6PE4UKcBf576y+TOu0pY70aTs7W9WrumxUqEO9uaJVCAME1m50IMlc6
         spEF9/pw856m9Sb5BuT6ii0NNGYfn6VTwqM8Jw0NZMNIu7NROf4BWPI1GXSalMtuu0MS
         VWEA==
X-Forwarded-Encrypted: i=1; AJvYcCVFQvvPxRhSygUW8APBDM1V7nSjPOH9cdkq6pcd1YhVJglfDqe1uRsj/nUCx14N1V6v2KIEklCTsYGq2CZ8wQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZs2Eg5U0Ew0r7UagTUV7E3Z2A8c4ZDQItKn/Ur1PIwJV04AaK
	vcmUyiqH4m3uBc8AaaJS64+RRQ+D4ko7LHkpbwDsavPPjF4e/WIJ8fH2YIIxmg==
X-Google-Smtp-Source: AGHT+IFK7EbTW8j6RbaesACTxS+4wyWWBFBogZmLwWGxzhBM+sg2NEDsPKsDx80UIoPC1dThJW6KHg==
X-Received: by 2002:a05:6a20:2d1f:b0:1db:e90a:6b24 with SMTP id adf61e73a8af0-1dc22985104mr21818819637.25.1731393843104;
        Mon, 11 Nov 2024 22:44:03 -0800 (PST)
Received: from thinkpad ([117.213.103.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7240799bb78sm10282483b3a.95.2024.11.11.22.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 22:44:02 -0800 (PST)
Date: Tue, 12 Nov 2024 12:13:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 7/7] scsi: ufs: rockchip: initial support for UFS
Message-ID: <20241112064354.g634ca5w2gagfyko@thinkpad>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
 <20241109121249.vncqbacvpnpf6d34@thinkpad>
 <13ad21bb-9f5a-4a4b-8b65-55243f6fe817@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13ad21bb-9f5a-4a4b-8b65-55243f6fe817@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_224404_464516_3DD87E02 
X-CRM114-Status: GOOD (  15.11  )
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

T24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgMDk6MTA6MzlBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
OgoKWy4uLl0KCj4gPiA+ICtzdGF0aWMgdm9pZCB1ZnNfcm9ja2NoaXBfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IHVmc19oYmEgKmhi
YSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+ID4gPiArCXN0cnVjdCB1ZnNfcm9ja2No
aXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4gPiArCj4gPiA+ICsJ
cG1fcnVudGltZV9mb3JiaWQoJnBkZXYtPmRldik7Cj4gPiA+ICsJcG1fcnVudGltZV9nZXRfbm9y
ZXN1bWUoJnBkZXYtPmRldik7Cj4gPiAKPiA+IFdoeSBkbyB5b3UgbmVlZCB0aGVzZT8gWW91IGFy
ZSBub3QgaW5jcmVtZW50aW5nIHRoZSByZWZjb3VudCBpbiBwcm9iZSgpIGFuZAo+ID4gdGhlcmUg
aXMgbm8gYXV0byBQTSBpbnZvbHZlZC4KPiAKPiBPaCwgaXQgd2FzIGEgbGVmdG92ZXIgZnJvbSBm
b3JtZXIgdmVyc2lvbiBJIGhhdmVuJ3Qgbm90aWNlZC4gV2lsbAo+IHJlbW92ZS4KPiAKCkkndmUg
c2VudCBhIHNlcmllcyBbMV0gdGhhdCBhZGRyZXNzZXMgdGhlIHJ1bnRpbWUgUE0gaXNzdWVzLiBD
b3VsZCB5b3UgcGxlYXNlCmdpdmUgaXQgYSB0cnkgYW5kIGdpdmUgeW91ciB0ZXN0ZWQtYnkgbWF5
YmU/CgotIE1hbmkKClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1zY3NpLzIwMjQx
MTExLXVmc19idWdfZml4LXYxLTAtNDVhZDhiNjJmMDJlQGxpbmFyby5vcmcvCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
