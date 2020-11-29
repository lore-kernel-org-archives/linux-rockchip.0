Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EEFC3E8C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F5C32084C
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ur2EBt4/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5F5C32084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OsqyOMBGwdPm3Qrhe+otJta4zLPsmQ4FVNXljRzZUmU=; b=ur2EBt4/V2hdU7DE7hV4q6U4u
	X/0DRBVnYiWPfc7qS8NXqg0hQEfXSff9NuTaK0wMJuf+46JpTkF8fwSh4aJs/E4mTQoBLCx6iayoJ
	87spXBFm5y3x8oJ4QOwBLoOZcN7cIydVE0tJZQLNnQhcU6abYoshjvLZxEWOdBW8Yhoo2FEQHz5nQ
	+saRqVg/qtSzjoPlYTeMVI9CMmcZEFefCYVAeW9SH5FnMHWYSLA0MWwiY1RAltJbpEWxL/UpaW3L1
	a4tjWA416qa1uJlxZU5mX79fWHUGvH9LSlDDmAziWmPZrRvtsQrpIQP7VBjDPVBxSNJH17Z61D+JX
	Q/zE6bVag==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjVoK-0002OY-37; Sun, 29 Nov 2020 23:08:52 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjVnP-00025M-EQ; Sun, 29 Nov 2020 23:07:56 +0000
Received: by mail-wr1-f65.google.com with SMTP id u12so13105897wrt.0;
 Sun, 29 Nov 2020 15:07:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uPxJqe/4fqAvPeHEi4PXiRImG9ouLArz1SvUbqNRaMU=;
 b=Y+ECl/e2jG06ewMMfvdvwAROhswQY03KG3TKqq8VMhqWT4J+OQ1rtQoSAxyTvNbsA4
 ZJylFzgHHVy+S6cpvm/ebj7duxl6cuRDRgHda6di9SJKJ9IKRNCiyq13Rbc32W97KOkS
 YJfCEX8OfqzuM65G6Nvow4Mpz91cq8cLQMHabSKGYXcVPpS/2buy92tmArKoOUci8h+N
 fThtoH4PIpNRqPG0OQ8nOWvCyN7HoDsJYRE7xVG9dFt7sqjwgB1tGoT8UK1MS8VwP7KM
 t0mBh2PK4kcMiBNdLQejctBflsZ5w23EXD5Mc1dI0bGvGydjAlzvEx1DuGykU614ZIup
 Fq2Q==
X-Gm-Message-State: AOAM5320H9PQ4p2Dyhf2kK+SGO1vni+q7ZCXk7v/C+S20FC0KwP7ZFRz
 WimgU9wxcWHpD2H6mrfqTdI=
X-Google-Smtp-Source: ABdhPJxBybijJQjc+K6GS3b05hGcfYGidU+rzn/2+1RrcEs/rkLFlqp5WDEDRPkMUSgp4rfySiTCfA==
X-Received: by 2002:adf:e912:: with SMTP id f18mr24033599wrm.79.1606691274071; 
 Sun, 29 Nov 2020 15:07:54 -0800 (PST)
Received: from workstation.lan ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id d2sm24831005wrn.43.2020.11.29.15.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Nov 2020 15:07:53 -0800 (PST)
From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v6 5/5] PCI: xgene: Removed unused ".bus_shift" initialisers
 from pci-xgene.c
Date: Sun, 29 Nov 2020 23:07:43 +0000
Message-Id: <20201129230743.3006978-6-kw@linux.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201129230743.3006978-1-kw@linux.com>
References: <20201129230743.3006978-1-kw@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_180755_603935_17D37FEB 
X-CRM114-Status: GOOD (  12.18  )
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

UmVtb3ZlZCB1bnVzZWQgIi5idXNfc2hpZnQiIGluaXRpYWxpc2VycyBmcm9tIHBjaS14Z2VuZS5j
IGFzCnhnZW5lX3BjaWVfbWFwX2J1cygpIGRpZCBub3QgdXNlIHRoZXNlLgoKU3VnZ2VzdGVkLWJ5
OiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBLcnp5
c3p0b2YgV2lsY3p5xYRza2kgPGt3QGxpbnV4LmNvbT4KLS0tCiBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaS14Z2VuZS5jIHwgMiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2kteGdlbmUuYyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpLXhnZW5lLmMKaW5kZXggOGUwZGI4NGYwODlkLi44NWU3Yzk4MjY1
ZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLXhnZW5lLmMKKysrIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2kteGdlbmUuYwpAQCAtMjU3LDcgKzI1Nyw2IEBAIHN0
YXRpYyBpbnQgeGdlbmVfdjFfcGNpZV9lY2FtX2luaXQoc3RydWN0IHBjaV9jb25maWdfd2luZG93
ICpjZmcpCiB9CiAKIGNvbnN0IHN0cnVjdCBwY2lfZWNhbV9vcHMgeGdlbmVfdjFfcGNpZV9lY2Ft
X29wcyA9IHsKLQkuYnVzX3NoaWZ0CT0gMTYsCiAJLmluaXQJCT0geGdlbmVfdjFfcGNpZV9lY2Ft
X2luaXQsCiAJLnBjaV9vcHMJPSB7CiAJCS5tYXBfYnVzCT0geGdlbmVfcGNpZV9tYXBfYnVzLApA
QCAtMjcyLDcgKzI3MSw2IEBAIHN0YXRpYyBpbnQgeGdlbmVfdjJfcGNpZV9lY2FtX2luaXQoc3Ry
dWN0IHBjaV9jb25maWdfd2luZG93ICpjZmcpCiB9CiAKIGNvbnN0IHN0cnVjdCBwY2lfZWNhbV9v
cHMgeGdlbmVfdjJfcGNpZV9lY2FtX29wcyA9IHsKLQkuYnVzX3NoaWZ0CT0gMTYsCiAJLmluaXQJ
CT0geGdlbmVfdjJfcGNpZV9lY2FtX2luaXQsCiAJLnBjaV9vcHMJPSB7CiAJCS5tYXBfYnVzCT0g
eGdlbmVfcGNpZV9tYXBfYnVzLAotLSAKMi4yOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
