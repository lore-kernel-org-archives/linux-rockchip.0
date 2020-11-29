Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB3CC64E7B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 772AC2084C
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="PsxGD8Qy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 772AC2084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=if4GcUCEHIEhjnxmtL+W46y9c3aEbgExXLszZpa3GFs=; b=PsxGD8QyfVj069JIDpH1pqoSk
	3RbhmKMOQSILM28MyT2EXpsEGQVwGt5m/F4hcuA940bd7oTbGJYLX8g7I3+RLColkyBiDH7eoakcG
	K07ky78fHNd632v6lvAy4y+Sy5wBXn/5NY68bLzf+NJLDEn9WHx25BeEMiiI0TowBlbnj5pyAp1Se
	c+S+9hfHq2Vj04sl3iO/gxvRY5STmFLBoeDWSG+0I30fNJ2QRv/BkfWkptwy0hSAUAjWLBUgAyJ4Y
	JzieKk5vAHbROP2Bvh5B11cxaBF2puuDOwI92PNXhWJlovIadf7pWv4fNOrYTXm8p0cBxLW+dV1ap
	ihlZRK5cA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjVna-00029F-W7; Sun, 29 Nov 2020 23:08:07 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjVnL-00024C-Mo; Sun, 29 Nov 2020 23:07:52 +0000
Received: by mail-wr1-f67.google.com with SMTP id k14so13093958wrn.1;
 Sun, 29 Nov 2020 15:07:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7DrLBT8KBYKfbvtR7994XDirbE4jnXzlQLSoJlL9lc=;
 b=CInd64Y8kw8Uh2vtF0pYhhyAlI5cKMmFjitSetMEwMn1ltfXFf+lcBzhSyfMf8AQbM
 ls1OCTgd7FXt1U2O6GayL2WArZjA1KzD6rmOQVenFDnYn+YfyqmSHDg/Q1AQqF0WhhbB
 OHtj6P+LmWE3LDkYCaouCMb7g9L7vwCCnMheV4wiH89PdgEKLrDGVysfiH6fvIxkffh8
 6qC0Ja3DKhYrIQDrij9lBXi8aftJQOJZch2FPPr2bisE6c9JDJ1p0g1Ssd7PV6jn0dd4
 7+gJzCaNTJf1cI+HdZZGL2qCQA4xp31pZY+CUz2rxBp3eML0QSV+R/lERHw4LsdWZt3Z
 rz0w==
X-Gm-Message-State: AOAM5312Jbh3v/hMf7f/DMCI1HyRTv4ppgderXVCuHTnEc/tMYrJ2K1+
 MoCpJgXKuQm29o4c9Sj88cw=
X-Google-Smtp-Source: ABdhPJwdjGj7iDsGU1B5WR1LxkaOGB+ic6Eu0jtLWAlHXS2/EdXYuqT/jY33YywMRM935NcuXWVL6A==
X-Received: by 2002:a5d:65ca:: with SMTP id e10mr24605112wrw.42.1606691270924; 
 Sun, 29 Nov 2020 15:07:50 -0800 (PST)
Received: from workstation.lan ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id d2sm24831005wrn.43.2020.11.29.15.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Nov 2020 15:07:50 -0800 (PST)
From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v6 3/5] PCI: iproc: Convert to use the new ECAM constants
Date: Sun, 29 Nov 2020 23:07:41 +0000
Message-Id: <20201129230743.3006978-4-kw@linux.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201129230743.3006978-1-kw@linux.com>
References: <20201129230743.3006978-1-kw@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_180751_903244_291119B4 
X-CRM114-Status: GOOD (  18.22  )
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

Q2hhbmdlIGludGVyZmFjZSBvZiB0aGUgZnVuY3Rpb24gaXByb2NfcGNpZV9tYXBfZXBfY2ZnX3Jl
ZygpIHNvIHRoYXQgdXNlCm9mIFBDSV9TTE9UKCkgYW5kIFBDSV9GVU5DKCkgbWFjcm9zIGFuZCBt
b3N0IG9mIHRoZSBsb2NhbCBFQ0FNLXNwZWNpZmljCmNvbnN0YW50cyBjYW4gYmUgZHJvcHBlZCwg
YW5kIHRoZSBuZXcgUENJRV9FQ0FNX09GRlNFVCgpIG1hY3JvIGNhbiBiZQp1c2VkIGluc3RlYWQu
ICBVc2UgdGhlIEFMSUdOX0RPV04oKSBtYWNybyB0byBlbnN1cmUgdGhhdCBQQ0kgRXhwcmVzcwpF
Q0FNIG9mZnNldCBpcyBhbHdheXMgMzIgYml0IGFsaWduZWQuCgpTdWdnZXN0ZWQtYnk6IEJqb3Ju
IEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBX
aWxjennFhHNraSA8a3dAbGludXguY29tPgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1pcHJvYy5jIHwgMzEgKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1pcHJvYy5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2llLWlwcm9jLmMKaW5kZXggOTA1ZTkzODA4MjQzLi41MDM2NjIzODBmZjggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1pcHJvYy5jCisrKyBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1pcHJvYy5jCkBAIC02LDYgKzYsNyBAQAogCiAjaW5jbHVkZSA8bGludXgv
a2VybmVsLmg+CiAjaW5jbHVkZSA8bGludXgvcGNpLmg+CisjaW5jbHVkZSA8bGludXgvcGNpLWVj
YW0uaD4KICNpbmNsdWRlIDxsaW51eC9tc2kuaD4KICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KICNp
bmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KQEAgLTM5LDE2ICs0MCw4IEBACiAKICNkZWZpbmUgQ0ZH
X0lORF9BRERSX01BU0sJCTB4MDAwMDFmZmMKIAotI2RlZmluZSBDRkdfQUREUl9CVVNfTlVNX1NI
SUZUCQkyMAotI2RlZmluZSBDRkdfQUREUl9CVVNfTlVNX01BU0sJCTB4MGZmMDAwMDAKLSNkZWZp
bmUgQ0ZHX0FERFJfREVWX05VTV9TSElGVAkJMTUKLSNkZWZpbmUgQ0ZHX0FERFJfREVWX05VTV9N
QVNLCQkweDAwMGY4MDAwCi0jZGVmaW5lIENGR19BRERSX0ZVTkNfTlVNX1NISUZUCQkxMgotI2Rl
ZmluZSBDRkdfQUREUl9GVU5DX05VTV9NQVNLCQkweDAwMDA3MDAwCi0jZGVmaW5lIENGR19BRERS
X1JFR19OVU1fU0hJRlQJCTIKICNkZWZpbmUgQ0ZHX0FERFJfUkVHX05VTV9NQVNLCQkweDAwMDAw
ZmZjCi0jZGVmaW5lIENGR19BRERSX0NGR19UWVBFX1NISUZUCQkwCi0jZGVmaW5lIENGR19BRERS
X0NGR19UWVBFX01BU0sJCTB4MDAwMDAwMDMKKyNkZWZpbmUgQ0ZHX0FERFJfQ0ZHX1RZUEVfMQkJ
MQogCiAjZGVmaW5lIFNZU19SQ19JTlRYX01BU0sJCTB4ZgogCkBAIC00NTksMTkgKzQ1MiwxNSBA
QCBzdGF0aWMgaW5saW5lIHZvaWQgaXByb2NfcGNpZV9hcGJfZXJyX2Rpc2FibGUoc3RydWN0IHBj
aV9idXMgKmJ1cywKIAogc3RhdGljIHZvaWQgX19pb21lbSAqaXByb2NfcGNpZV9tYXBfZXBfY2Zn
X3JlZyhzdHJ1Y3QgaXByb2NfcGNpZSAqcGNpZSwKIAkJCQkJICAgICAgIHVuc2lnbmVkIGludCBi
dXNubywKLQkJCQkJICAgICAgIHVuc2lnbmVkIGludCBzbG90LAotCQkJCQkgICAgICAgdW5zaWdu
ZWQgaW50IGZuLAorCQkJCQkgICAgICAgdW5zaWduZWQgaW50IGRldmZuLAogCQkJCQkgICAgICAg
aW50IHdoZXJlKQogewogCXUxNiBvZmZzZXQ7CiAJdTMyIHZhbDsKIAogCS8qIEVQIGRldmljZSBh
Y2Nlc3MgKi8KLQl2YWwgPSAoYnVzbm8gPDwgQ0ZHX0FERFJfQlVTX05VTV9TSElGVCkgfAotCQko
c2xvdCA8PCBDRkdfQUREUl9ERVZfTlVNX1NISUZUKSB8Ci0JCShmbiA8PCBDRkdfQUREUl9GVU5D
X05VTV9TSElGVCkgfAotCQkod2hlcmUgJiBDRkdfQUREUl9SRUdfTlVNX01BU0spIHwKLQkJKDEg
JiBDRkdfQUREUl9DRkdfVFlQRV9NQVNLKTsKKwl2YWwgPSBBTElHTl9ET1dOKFBDSUVfRUNBTV9P
RkZTRVQoYnVzbm8sIGRldmZuLCB3aGVyZSksIDQpIHwKKwkJQ0ZHX0FERFJfQ0ZHX1RZUEVfMTsK
IAogCWlwcm9jX3BjaWVfd3JpdGVfcmVnKHBjaWUsIElQUk9DX1BDSUVfQ0ZHX0FERFIsIHZhbCk7
CiAJb2Zmc2V0ID0gaXByb2NfcGNpZV9yZWdfb2Zmc2V0KHBjaWUsIElQUk9DX1BDSUVfQ0ZHX0RB
VEEpOwpAQCAtNTc0LDggKzU2Myw2IEBAIHN0YXRpYyBpbnQgaXByb2NfcGNpZV9jb25maWdfcmVh
ZChzdHJ1Y3QgcGNpX2J1cyAqYnVzLCB1bnNpZ25lZCBpbnQgZGV2Zm4sCiAJCQkJICBpbnQgd2hl
cmUsIGludCBzaXplLCB1MzIgKnZhbCkKIHsKIAlzdHJ1Y3QgaXByb2NfcGNpZSAqcGNpZSA9IGlw
cm9jX2RhdGEoYnVzKTsKLQl1bnNpZ25lZCBpbnQgc2xvdCA9IFBDSV9TTE9UKGRldmZuKTsKLQl1
bnNpZ25lZCBpbnQgZm4gPSBQQ0lfRlVOQyhkZXZmbik7CiAJdW5zaWduZWQgaW50IGJ1c25vID0g
YnVzLT5udW1iZXI7CiAJdm9pZCBfX2lvbWVtICpjZmdfZGF0YV9wOwogCXVuc2lnbmVkIGludCBk
YXRhOwpAQCAtNTkwLDcgKzU3Nyw3IEBAIHN0YXRpYyBpbnQgaXByb2NfcGNpZV9jb25maWdfcmVh
ZChzdHJ1Y3QgcGNpX2J1cyAqYnVzLCB1bnNpZ25lZCBpbnQgZGV2Zm4sCiAJCXJldHVybiByZXQ7
CiAJfQogCi0JY2ZnX2RhdGFfcCA9IGlwcm9jX3BjaWVfbWFwX2VwX2NmZ19yZWcocGNpZSwgYnVz
bm8sIHNsb3QsIGZuLCB3aGVyZSk7CisJY2ZnX2RhdGFfcCA9IGlwcm9jX3BjaWVfbWFwX2VwX2Nm
Z19yZWcocGNpZSwgYnVzbm8sIGRldmZuLCB3aGVyZSk7CiAKIAlpZiAoIWNmZ19kYXRhX3ApCiAJ
CXJldHVybiBQQ0lCSU9TX0RFVklDRV9OT1RfRk9VTkQ7CkBAIC02MzEsMTMgKzYxOCwxMSBAQCBz
dGF0aWMgdm9pZCBfX2lvbWVtICppcHJvY19wY2llX21hcF9jZmdfYnVzKHN0cnVjdCBpcHJvY19w
Y2llICpwY2llLAogCQkJCQkgICAgaW50IGJ1c25vLCB1bnNpZ25lZCBpbnQgZGV2Zm4sCiAJCQkJ
CSAgICBpbnQgd2hlcmUpCiB7Ci0JdW5zaWduZWQgc2xvdCA9IFBDSV9TTE9UKGRldmZuKTsKLQl1
bnNpZ25lZCBmbiA9IFBDSV9GVU5DKGRldmZuKTsKIAl1MTYgb2Zmc2V0OwogCiAJLyogcm9vdCBj
b21wbGV4IGFjY2VzcyAqLwogCWlmIChidXNubyA9PSAwKSB7Ci0JCWlmIChzbG90ID4gMCB8fCBm
biA+IDApCisJCWlmIChQQ0lFX0VDQU1fREVWRk4oZGV2Zm4pID4gMCkKIAkJCXJldHVybiBOVUxM
OwogCiAJCWlwcm9jX3BjaWVfd3JpdGVfcmVnKHBjaWUsIElQUk9DX1BDSUVfQ0ZHX0lORF9BRERS
LApAQCAtNjQ5LDcgKzYzNCw3IEBAIHN0YXRpYyB2b2lkIF9faW9tZW0gKmlwcm9jX3BjaWVfbWFw
X2NmZ19idXMoc3RydWN0IGlwcm9jX3BjaWUgKnBjaWUsCiAJCQlyZXR1cm4gKHBjaWUtPmJhc2Ug
KyBvZmZzZXQpOwogCX0KIAotCXJldHVybiBpcHJvY19wY2llX21hcF9lcF9jZmdfcmVnKHBjaWUs
IGJ1c25vLCBzbG90LCBmbiwgd2hlcmUpOworCXJldHVybiBpcHJvY19wY2llX21hcF9lcF9jZmdf
cmVnKHBjaWUsIGJ1c25vLCBkZXZmbiwgd2hlcmUpOwogfQogCiBzdGF0aWMgdm9pZCBfX2lvbWVt
ICppcHJvY19wY2llX2J1c19tYXBfY2ZnX2J1cyhzdHJ1Y3QgcGNpX2J1cyAqYnVzLAotLSAKMi4y
OS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
