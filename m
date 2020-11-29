Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E70F0C64E7D
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93AB22084C
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="swCQDPZA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93AB22084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BzGhNLWHiiP05K0+ZG4D9CC9CTUJLdejS0j+YdnWlkI=; b=swCQDPZAOBa8yG3Nl72yx9ZdD
	GZ0Uq7bWeiDCyJBkeYhWj+F8a6NlQmX2+wi7uAJbihKeMaiHDRUJOTvQBDQcbGeRSEv/vSLeiwQcs
	sEk+2li+xZ6VSSPcsaqylYZJoOP46SMdRNUBIkX1caEAE9MzTUtHmDl5t+Q/P0fD84uOQFQuxwASb
	78plNi1xNqmQyZCmudLq1+CoM1z/YR0gtZvuBULGBOryyjTc6uKRlxQxOrWxmELCLIIGlR9dhgmtI
	JBMbQ3CouWqZP4bLxGuyjrein3H2HXRTHtwPXalJ7N1Zg+oTVDCnSnCGgEM/yCrJCDLpArmphXPQE
	+Y8nvMB6Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjVnX-00027g-31; Sun, 29 Nov 2020 23:08:03 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjVnK-00023e-5s; Sun, 29 Nov 2020 23:07:51 +0000
Received: by mail-wr1-f67.google.com with SMTP id l1so13057668wrb.9;
 Sun, 29 Nov 2020 15:07:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C4ZAbgOviSl5kwTV38A0mgojnuMMJBX6cIDk0sTmaeo=;
 b=esspPGNu/llG76Fi/eaa8Ceb9v9iJwy01Y8c4Vesp050TNggv/RclTFssZmYNWWsFf
 IoSNCHBakMZnr46safj7ZgmlZ1AutDPFVf82WDNv/zWMGQ106TgClJZAICld89Ogs0Et
 tdGf5W9N907rFscjQq8pE5VKcXix5djkYY7hodQgfIh4ku6/+COQKQKPe52wtR7Qx46f
 aPQNZXHo1FApp+SfJWV67Uag9shNVaDd5W6oyZedLwZ0i6RNuY+xmK/oS+Fp4uX73gDr
 BRGfKPIuDwOv2u/53rbd3Ev2C+L1W5bRa4mZRXrzTxHfnQlgnlfQMyrvcwgTsc+dCDbI
 TuBQ==
X-Gm-Message-State: AOAM531/qdY1fEYJm52h7pm7E9BECwDYb9C6obNm5o7VHyHr/aGr41Fc
 WEfWNxRe7m0a2evkSKPTMKs=
X-Google-Smtp-Source: ABdhPJyc10rS86sUCkCS7JwDecOpIFDWRywvD2p3TPef9gz9BjYexnZrT+fR1+MqL8LVO9fcgPl/QQ==
X-Received: by 2002:adf:fd0e:: with SMTP id e14mr24090769wrr.119.1606691269434; 
 Sun, 29 Nov 2020 15:07:49 -0800 (PST)
Received: from workstation.lan ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id d2sm24831005wrn.43.2020.11.29.15.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Nov 2020 15:07:48 -0800 (PST)
From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v6 2/5] PCI: thunder-pem: Add constant for custom ".bus_shit"
 initialiser
Date: Sun, 29 Nov 2020 23:07:40 +0000
Message-Id: <20201129230743.3006978-3-kw@linux.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201129230743.3006978-1-kw@linux.com>
References: <20201129230743.3006978-1-kw@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_180750_253993_5DD2A5F0 
X-CRM114-Status: GOOD (  14.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Jonathan Derrick <jonathan.derrick@intel.com>, linux-pci@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 linuxppc-dev@lists.ozlabs.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIGEgY3VzdG9tIGNvbnN0YW50IGZvciB0aGUgIi5idXNfc2hpdCIgaW5pdGlhbGlzZXIgdG8g
Y2FwdHVyZQphIG5vbi1zdGFuZGFyZCBwbGF0Zm9ybS1zcGVjaWZpYyBFQ0FNIGJ1cyBzaGlmdCB2
YWx1ZS4KClN0YW5kYXJkIHZhbHVlcyBvdGhlcndpc2UgZGVmaW5lZCBpbiB0aGUgUENJIEV4cHJl
c3MgU3BlY2lmaWNhdGlvbgphcmUgYXZhaWxhYmxlIGluIHRoZSBpbmNsdWRlL2xpbnV4L3BjaS1l
Y2FtLmguCgpTdWdnZXN0ZWQtYnk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+
ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBXaWxjennFhHNraSA8a3dAbGludXguY29tPgotLS0K
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLXRodW5kZXItcGVtLmMgfCAxMyArKysrKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS10aHVuZGVyLXBlbS5jIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2ktdGh1bmRlci1wZW0uYwppbmRleCAzZjg0Nzk2OTE0M2Uu
LjFhM2Y3MGFjNjFmYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktdGh1
bmRlci1wZW0uYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS10aHVuZGVyLXBlbS5j
CkBAIC0xOSw2ICsxOSwxNSBAQAogI2RlZmluZSBQRU1fQ0ZHX1dSIDB4MjgKICNkZWZpbmUgUEVN
X0NGR19SRCAweDMwCiAKKy8qCisgKiBFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFjY2VzcyBNZWNo
YW5pc20gKEVDQU0pCisgKgorICogTi5CLiBUaGlzIGlzIGEgbm9uLXN0YW5kYXJkIHBsYXRmb3Jt
LXNwZWNpZmljIEVDQU0gYnVzIHNoaWZ0IHZhbHVlLiAgRm9yCisgKiBzdGFuZGFyZCB2YWx1ZXMg
ZGVmaW5lZCBpbiB0aGUgUENJIEV4cHJlc3MgQmFzZSBTcGVjaWZpY2F0aW9uIHNlZQorICogaW5j
bHVkZS9saW51eC9wY2ktZWNhbS5oLgorICovCisjZGVmaW5lIFRIVU5ERVJfUENJRV9FQ0FNX0JV
U19TSElGVAkyNAorCiBzdHJ1Y3QgdGh1bmRlcl9wZW1fcGNpIHsKIAl1MzIJCWVhX2VudHJ5WzNd
OwogCXZvaWQgX19pb21lbQkqcGVtX3JlZ19iYXNlOwpAQCAtNDA0LDcgKzQxMyw3IEBAIHN0YXRp
YyBpbnQgdGh1bmRlcl9wZW1fYWNwaV9pbml0KHN0cnVjdCBwY2lfY29uZmlnX3dpbmRvdyAqY2Zn
KQogfQogCiBjb25zdCBzdHJ1Y3QgcGNpX2VjYW1fb3BzIHRodW5kZXJfcGVtX2VjYW1fb3BzID0g
ewotCS5idXNfc2hpZnQJPSAyNCwKKwkuYnVzX3NoaWZ0CT0gVEhVTkRFUl9QQ0lFX0VDQU1fQlVT
X1NISUZULAogCS5pbml0CQk9IHRodW5kZXJfcGVtX2FjcGlfaW5pdCwKIAkucGNpX29wcwk9IHsK
IAkJLm1hcF9idXMJPSBwY2lfZWNhbV9tYXBfYnVzLApAQCAtNDQxLDcgKzQ1MCw3IEBAIHN0YXRp
YyBpbnQgdGh1bmRlcl9wZW1fcGxhdGZvcm1faW5pdChzdHJ1Y3QgcGNpX2NvbmZpZ193aW5kb3cg
KmNmZykKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZWNhbV9vcHMgcGNpX3RodW5kZXJf
cGVtX29wcyA9IHsKLQkuYnVzX3NoaWZ0CT0gMjQsCisJLmJ1c19zaGlmdAk9IFRIVU5ERVJfUENJ
RV9FQ0FNX0JVU19TSElGVCwKIAkuaW5pdAkJPSB0aHVuZGVyX3BlbV9wbGF0Zm9ybV9pbml0LAog
CS5wY2lfb3BzCT0gewogCQkubWFwX2J1cwk9IHBjaV9lY2FtX21hcF9idXMsCi0tIAoyLjI5LjIK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
