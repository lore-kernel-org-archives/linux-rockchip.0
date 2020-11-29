Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7EAC3E8C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC0572084C
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tbEJ+cVz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC0572084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wo9qoKiuFRV1sz4TeNoer/bWgQjrQ8TsbuqDP6+bf64=; b=tbEJ+cVzMiV0u7/uBtDpemxQr
	k8cVBLIR4YnscTr+oHNA8QQx30v6IhQ5ZpgmdFpvPGDjq/ZbGhzD7gZTZ/DLWSn+ehZYrZpEymgOJ
	5M/dkfQtze8ghH0r1dJm4khWWSBQDQwt3T63Z79upnOzvGtW/mSWbkFGOFESyn1fq1LXPmxZZjCry
	raYgXNdKlzip4JoozQSfw9vmsclA83JFNkNrs96+pIzGjSg6DK6Kk8amVvIgqRJfNOppZvjBEaLdW
	UVVbWsvG8rmRm4LwN1OHgg4X17fMsJ2ecD8OahKZ56EC1UB9xce4zX7t4+pgDH0PsQ8VmbslnnKG3
	wQ0fpx+kQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjVo3-0002Jl-Gp; Sun, 29 Nov 2020 23:08:35 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjVnN-00024s-C4; Sun, 29 Nov 2020 23:07:54 +0000
Received: by mail-wr1-f68.google.com with SMTP id e7so13083407wrv.6;
 Sun, 29 Nov 2020 15:07:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ff6pKCmLg5oT72OgCOHiIPYU12IbKoKvOXqEEVgg4cU=;
 b=Izxg8Xht3CvWe1xvBIr8Rb6A17QKh5nFXMFtTYQzmi74gu/RHaBp4iVzyeXMpvcEUW
 JWUFOIXRPli1RFC43kiYbRG5mFZ/H+asSiR2CrjNJC1xLifm7W2/nCs1ykIaQhQi2ev/
 YmrAFZvZYixqzwXfuwqjMlKIVLc7Y9dboc07LTib+B6lDY4NYMEoRnr1CSewu/V0PwMp
 3IkjIu2cWyiWFqKuVTqvRqDpn6VVz1XdJ3IsAN/g0lLV/g6V0Wgw5YJ8QsjpTtRuzfpH
 AOttd5LEcUY5iFcC77BUHHxUpQdQq9pbPo2Hn3w8DEx4yK4nOzb1ZQJaWNs7Bx3o7CJX
 WW9w==
X-Gm-Message-State: AOAM531g6YUBpFwygKysir9B0LwClKTxEqXSgzeSRtbYp3Fh8lstr3FX
 9SviIioUYLGJsWNKJdGd5vw=
X-Google-Smtp-Source: ABdhPJzHI72BcK2gh0kFjWjYjgwPhW5lYayUpFmk6eoZtDqknP6gOkv3hmwsP0YHAvHXiiV7ZOzodw==
X-Received: by 2002:adf:f9c5:: with SMTP id w5mr24603230wrr.69.1606691272550; 
 Sun, 29 Nov 2020 15:07:52 -0800 (PST)
Received: from workstation.lan ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id d2sm24831005wrn.43.2020.11.29.15.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Nov 2020 15:07:52 -0800 (PST)
From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v6 4/5] PCI: vmd: Update type of the __iomem pointers
Date: Sun, 29 Nov 2020 23:07:42 +0000
Message-Id: <20201129230743.3006978-5-kw@linux.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201129230743.3006978-1-kw@linux.com>
References: <20201129230743.3006978-1-kw@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_180753_488459_CF0AB4E3 
X-CRM114-Status: GOOD (  14.16  )
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

VXNlICJ2b2lkIF9faW9tZW0iIGluc3RlYWQgImNoYXIgX19pb21lbSIgcG9pbnRlciB0eXBlIHdo
ZW4gd29ya2luZyB3aXRoCnRoZSBhY2Nlc3NvciBmdW5jdGlvbnMgKHdpdGggbmFtZXMgbGlrZSBy
ZWFkYigpIG9yIHdyaXRlbCgpLCBldGMuKSB0bwpiZXR0ZXIgbWF0Y2ggYSBnaXZlbiBhY2Nlc3Nv
ciBmdW5jdGlvbiBzaWduYXR1cmUgd2hlcmUgY29tbW9ubHkgdGhlCmFkZHJlc3MgcG9pbnRpbmcg
dG8gYW4gSS9PIG1lbW9yeSByZWdpb24gd291bGQgYmUgYSAidm9pZCBfX2lvbWVtIgpwb2ludGVy
LgoKUmVsYXRlZDoKICBodHRwczovL2x3bi5uZXQvQXJ0aWNsZXMvMTAyMjMyLwoKU3VnZ2VzdGVk
LWJ5OiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBL
cnp5c3p0b2YgV2lsY3p5xYRza2kgPGt3QGxpbnV4LmNvbT4KLS0tCiBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL3ZtZC5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Zt
ZC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci92bWQuYwppbmRleCAxMzYxYTc5YmQxZTcuLjU5
ZmE5YTk0ODYwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci92bWQuYworKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3ZtZC5jCkBAIC05NSw3ICs5NSw3IEBAIHN0cnVjdCB2
bWRfZGV2IHsKIAlzdHJ1Y3QgcGNpX2RldgkJKmRldjsKIAogCXNwaW5sb2NrX3QJCWNmZ19sb2Nr
OwotCWNoYXIgX19pb21lbQkJKmNmZ2JhcjsKKwl2b2lkIF9faW9tZW0JCSpjZmdiYXI7CiAKIAlp
bnQgbXNpeF9jb3VudDsKIAlzdHJ1Y3Qgdm1kX2lycV9saXN0CSppcnFzOwpAQCAtMzI2LDcgKzMy
Niw3IEBAIHN0YXRpYyB2b2lkIHZtZF9yZW1vdmVfaXJxX2RvbWFpbihzdHJ1Y3Qgdm1kX2RldiAq
dm1kKQogCX0KIH0KIAotc3RhdGljIGNoYXIgX19pb21lbSAqdm1kX2NmZ19hZGRyKHN0cnVjdCB2
bWRfZGV2ICp2bWQsIHN0cnVjdCBwY2lfYnVzICpidXMsCitzdGF0aWMgdm9pZCBfX2lvbWVtICp2
bWRfY2ZnX2FkZHIoc3RydWN0IHZtZF9kZXYgKnZtZCwgc3RydWN0IHBjaV9idXMgKmJ1cywKIAkJ
CQkgIHVuc2lnbmVkIGludCBkZXZmbiwgaW50IHJlZywgaW50IGxlbikKIHsKIAl1bnNpZ25lZCBp
bnQgYnVzbnJfZWNhbSA9IGJ1cy0+bnVtYmVyIC0gdm1kLT5idXNuX3N0YXJ0OwpAQCAtMzQ2LDcg
KzM0Niw3IEBAIHN0YXRpYyBpbnQgdm1kX3BjaV9yZWFkKHN0cnVjdCBwY2lfYnVzICpidXMsIHVu
c2lnbmVkIGludCBkZXZmbiwgaW50IHJlZywKIAkJCWludCBsZW4sIHUzMiAqdmFsdWUpCiB7CiAJ
c3RydWN0IHZtZF9kZXYgKnZtZCA9IHZtZF9mcm9tX2J1cyhidXMpOwotCWNoYXIgX19pb21lbSAq
YWRkciA9IHZtZF9jZmdfYWRkcih2bWQsIGJ1cywgZGV2Zm4sIHJlZywgbGVuKTsKKwl2b2lkIF9f
aW9tZW0gKmFkZHIgPSB2bWRfY2ZnX2FkZHIodm1kLCBidXMsIGRldmZuLCByZWcsIGxlbik7CiAJ
dW5zaWduZWQgbG9uZyBmbGFnczsKIAlpbnQgcmV0ID0gMDsKIApAQCAtMzgxLDcgKzM4MSw3IEBA
IHN0YXRpYyBpbnQgdm1kX3BjaV93cml0ZShzdHJ1Y3QgcGNpX2J1cyAqYnVzLCB1bnNpZ25lZCBp
bnQgZGV2Zm4sIGludCByZWcsCiAJCQkgaW50IGxlbiwgdTMyIHZhbHVlKQogewogCXN0cnVjdCB2
bWRfZGV2ICp2bWQgPSB2bWRfZnJvbV9idXMoYnVzKTsKLQljaGFyIF9faW9tZW0gKmFkZHIgPSB2
bWRfY2ZnX2FkZHIodm1kLCBidXMsIGRldmZuLCByZWcsIGxlbik7CisJdm9pZCBfX2lvbWVtICph
ZGRyID0gdm1kX2NmZ19hZGRyKHZtZCwgYnVzLCBkZXZmbiwgcmVnLCBsZW4pOwogCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7CiAJaW50IHJldCA9IDA7CiAKLS0gCjIuMjkuMgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
