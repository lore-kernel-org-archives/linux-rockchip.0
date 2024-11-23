Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 396CDE6ADE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Nov 2024 05:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tm5z4wR0SldF0Hr6RAik2lzgWO5uAJQKmPKxnHVwvGc=; b=rsa1HZCfvoj+N9
	aBLr3Ua8wia6g6ZVvA40K5lGNZtC4aNbxBAFjdShVpgfhkGvau6Ua4ksd6WxCyhk9kFQzEUc0/ZWA
	IZsEpYuH6WGLwW8YxsH2fMcwCeWfjX65C9l466gQkTewPzFBt/7CdkT0UNEApsjZfDU1O1eS44pZe
	l9SW8WpBHbUU2XWWD3IBMWBRLkcxx4QOJLSbNqQoAR7edX8j/gcLZdLalHGaseCIwJPNNJms2ZHj/
	zm090e81cFCwWnpHEOyo2Rv0oogjKi74cv+g85gdQkYQnuW9xeoJMQrOOzdW3rG4ot8Gajmq0vm6/
	E2CKeXmJyV/Tfx6mseoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEiJk-00000003m3G-0eF7;
	Sat, 23 Nov 2024 05:04:24 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEiJg-00000003m2n-3q8Y
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Nov 2024 05:04:22 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-7f43259d220so2172190a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Nov 2024 21:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732338260; x=1732943060; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jrrbLdcdGlY2ZcZW0mEDuIlBogzMm+C1CwwsMUranJU=;
        b=zwJtbya8CoG6u23FSbriT8q41lYdItuxLYfscoePu6k35oDPAMZnOZP2EVTuvwgkXL
         vhWhCcn3kGOCEofxWQ2HxWfkB3ZRhFLDcH9PdZf7bWdyi/39pwgKQFcu+yZjNX7yknfW
         ln28OYITDjfApSDsZ5lETKfGI3h6Xpia6pew9BEXfBx56lnpeS1RkHZMyR2e6WEnnz1Q
         ZxDVPV4YQyIFbJNw+Zx2xvhFGOeJr4T3OZc+3pJMiDNGQdAP/mO+IkFlHfuBrYQgNjvm
         k2NiFBP0oM8ep3bHoloGDA4ukS1bDvtWYUp9lvwMOpVMfWcwNPefPLHNJ/wMD/XZ1inC
         b6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732338260; x=1732943060;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jrrbLdcdGlY2ZcZW0mEDuIlBogzMm+C1CwwsMUranJU=;
        b=tXuLRIclsacr2fL5ER16jt3KjL5Buw0CJs1F1P6TaikvTSMdfKRZh0T/Svzn9AGYVW
         V6ZJjcOt8Jfbdy7g6bOLQi+BEcbmTaBUVGW4iQoy3sKgrhAVOJRJ5+AFLhj+jnw75Vod
         P+k7VFwMDlCBfQVEffiLGHvPdbQ5K4lXd9Hgwhn4H1jO17QSZ/PKhPY1xpxknHhzyikM
         xIyCkJqgWM132yAUkyEyZmZJplPV/LgmSEzTrzo8kr54BhNNkKlMGZA7iPV3i4+acpUc
         AOc8H2kN8FN4QY1d+31LBHwLkx5IwueLbKDcd2FZUKTmyg0w6fjp8DM78QHDdOYfc9rL
         T+MA==
X-Forwarded-Encrypted: i=1; AJvYcCX4UWhx7uY7dmBOwCdb8rr9x/rAhJFhKyglfBtoO4AygBL3CLt+iJJnCs7beMXbPucy8scozCC/G801N5WHiw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx968e9cWGPEUjasmXx7eRxm8hJ14OPpq+bgv0bSIPeQQ/dedcK
	MARIsJNrxSj8O8mxYe14bgPO++XMvrZUOpOxegY8AP3pL61XTYYxvYMIvWNHug==
X-Gm-Gg: ASbGncvUH+zEpU5wVeZjfVB4VOSUJBSe8tXCwqnIxLKbeWD5WB9vxhjOxKQHQ4EQRo1
	+j0TflEFVNq4PCiCDMCpt7QlWXz9EcABSkmYZUxbr74rJXHB3xbRFWE24bARqEIUN0sUqiQbu5E
	77xcEVk1JabS1/FrR8EXMVyuoB7W9dghejAe9SwNZQNp+G1wN0Zl3dqTLUVVXU5n/aV15AQjz8Q
	iKt1lBfrqjIu+GbjMOQ+VFrmGSzsaoxj9KQQaR3/mfUM9BLBy/zYrMJD71/aKGAzg==
X-Google-Smtp-Source: AGHT+IHtEp73R31OmhWsYzXCA+I1V+Hri+7jEcS+EPxf7JnICgfkL145nhRT5ANnQ3iNY2Z3dlcmrA==
X-Received: by 2002:a05:6a20:7483:b0:1dc:c1c9:fc0a with SMTP id adf61e73a8af0-1e09e472aedmr7640085637.27.1732338260044;
        Fri, 22 Nov 2024 21:04:20 -0800 (PST)
Received: from thinkpad ([2409:40f2:101e:13d7:85cf:a1c4:6490:6f75])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de532d0csm2519571b3a.116.2024.11.22.21.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 21:04:19 -0800 (PST)
Date: Sat, 23 Nov 2024 10:34:09 +0530
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
Subject: Re: [PATCH v5 7/7] arm64: dts: rockchip: Add UFS support for RK3576
 SoC
Message-ID: <20241123050409.7ynmaw6cqtfefqdy@thinkpad>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
 <1731048987-229149-8-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1731048987-229149-8-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_210421_791034_7CF2E7FC 
X-CRM114-Status: GOOD (  15.92  )
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

T24gRnJpLCBOb3YgMDgsIDIwMjQgYXQgMDI6NTY6MjZQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEFkZCB1ZnNoYyBub2RlIHRvIHJrMzU3Ni5kdHNpLCBzbyB0aGUgYm9hcmQgdXNpbmcgVUZT
IGNvdWxkCj4gZW5hYmxlIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjU6IE5vbmUKPiBDaGFu
Z2VzIGluIHY0OiBOb25lCj4gQ2hhbmdlcyBpbiB2MzogTm9uZQo+IENoYW5nZXMgaW4gdjI6IE5v
bmUKPiAKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaSB8IDI1ICsr
KysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPiBpbmRleCA0
MzYyMzJmLi4zMmJlZGEyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTc2LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3
Ni5kdHNpCj4gQEAgLTExMTAsNiArMTExMCwzMSBAQAo+ICAJCQl9Owo+ICAJCX07Cj4gIAo+ICsJ
CXVmc2hjOiB1ZnNoY0AyYTJkMDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
NTc2LXVmc2hjIjsKPiArCQkJcmVnID0gPDB4MCAweDJhMmQwMDAwIDAgMHgxMDAwMD4sIC8qIDA6
IEhDSSBzdGFuZGFyZCAqLwo+ICsJCQkgICAgICA8MHgwIDB4MmIwNDAwMDAgMCAweDEwMDAwPiwg
LyogMTogTXBoeSAqLwo+ICsJCQkgICAgICA8MHgwIDB4MjYwMWYwMDAgMCAweDEwMDA+LCAgLyog
MjogSENJIFZlbmRvciBzcGVjaWZpZWQgKi8KPiArCQkJICAgICAgPDB4MCAweDI2MDNjMDAwIDAg
MHgxMDAwPiwgIC8qIDM6IE1waHkgVmVuZG9yIHNwZWNpZmllZCAqLwo+ICsJCQkgICAgICA8MHgw
IDB4MmEyZTAwMDAgMCAweDEwMDAwPjsgLyogNDogSENJIGFwYiAqLwoKTm8gbmVlZCB0byBhZGQg
Y29tbWVudHMgZm9yIGVhY2ggcmVnaW9uLiBCaW5kaW5ncyBkZXNjcmliZSB0aGVtLgoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
