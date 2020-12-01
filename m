Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E22B1C64E7A
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:34:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 50A6D20870
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:34:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="u0T16Llz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 50A6D20870
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yg1c1Nk29aKFUiOM9Du/wv4nh8/5Y7AY6onkPaQ0nx8=; b=u0T16LlzpOliGsZLzpz0XVDWI
	VQw6G9kdcS34cdOMsXf4ry8LobKigdrG9rTakeMbWrrHSrC7ThSCa2x3+mx7Gx02mIlPgNYp5ml4G
	BCtOleTmjDS7F/O7qqWNV5ghpar0AgNKL9VbbJ+DNt9hzwZvbPSaCRQsCIEFdE8Yxpe5bPEg9uSqH
	UG+5XzyzTvH5giHjBZXm+BsUm+zYD/+iTUikgwc3/tJZVK2wFA13JBGi/MQ8ZQ9w73QKV+cD7z4Ff
	zFf2I7RvjTPAtXzfE/bsfTxtIwONszOtfI4CU2xhyMPUdNIQjtZgAoybDnuzhC/X4uXgkt8eNIVgE
	cwXi/CJ5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk7ff-0003Mk-I2; Tue, 01 Dec 2020 15:34:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk7fa-0003L5-Sk; Tue, 01 Dec 2020 15:34:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44A7430E;
 Tue,  1 Dec 2020 07:34:20 -0800 (PST)
Received: from red-moon.arm.com (unknown [10.57.32.106])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46CB63F575;
 Tue,  1 Dec 2020 07:34:12 -0800 (PST)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Date: Tue,  1 Dec 2020 15:34:00 +0000
Message-Id: <160683676668.20365.13565676178464743008.b4-ty@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20201129230743.3006978-1-kw@linux.com>
References: <20201129230743.3006978-1-kw@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_103423_005681_BB9EA6C0 
X-CRM114-Status: GOOD (  12.66  )
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

T24gU3VuLCAyOSBOb3YgMjAyMCAyMzowNzozOCArMDAwMCwgS3J6eXN6dG9mIFdpbGN6ecWEc2tp
IHdyb3RlOgo+IFVuaWZ5IEVDQU0tcmVsYXRlZCBjb25zdGFudHMgaW50byBhIHNpbmdsZSBzZXQg
b2Ygc3RhbmRhcmQgY29uc3RhbnRzCj4gZGVmaW5pbmcgbWVtb3J5IGFkZHJlc3Mgc2hpZnQgdmFs
dWVzIGZvciB0aGUgYnl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQgY2FuCj4gYmUgdXNlZCB3aGVuIGFj
Y2Vzc2luZyB0aGUgUENJIEV4cHJlc3MgQ29uZmlndXJhdGlvbiBTcGFjZSwgYW5kIHRoZW4KPiBt
b3ZlIG5hdGl2ZSBQQ0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMgdG8gdXNlIG5ld2x5IGlu
dHJvZHVjZWQKPiBkZWZpbml0aW9ucyByZXRpcmluZyBhbnkgZHJpdmVyLXNwZWNpZmljIG9uZXMu
Cj4gCj4gVGhlIEVDQU0gKCJFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFjY2VzcyBNZWNoYW5pc20i
KSBpcyBkZWZpbmVkIGJ5IHRoZQo+IFBDSSBFeHByZXNzIHNwZWNpZmljYXRpb24gKHNlZSBQQ0kg
RXhwcmVzcyBCYXNlIFNwZWNpZmljYXRpb24sIFJldmlzaW9uCj4gNS4wLCBWZXJzaW9uIDEuMCwg
U2VjdGlvbiA3LjIuMiwgcC4gNjc2KSwgdGh1cyBtb3N0IGhhcmR3YXJlIHNob3VsZAo+IGltcGxl
bWVudCBpdCB0aGUgc2FtZSB3YXkuCj4gCj4gWy4uLl0KCkFwcGxpZWQgdG8gcGNpL2VjYW0sIHRo
YW5rcyEKClsxLzVdIFBDSTogVW5pZnkgRUNBTSBjb25zdGFudHMgaW4gbmF0aXZlIFBDSSBFeHBy
ZXNzIGRyaXZlcnMKICAgICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9scGllcmFsaXNpL3BjaS9j
L2YzYzA3Y2Y2OTIKWzIvNV0gUENJOiB0aHVuZGVyLXBlbTogQWRkIGNvbnN0YW50IGZvciBjdXN0
b20gIi5idXNfc2hpZnQiIGluaXRpYWxpc2VyCiAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
bHBpZXJhbGlzaS9wY2kvYy8zYzM4NTc5MjYzClszLzVdIFBDSTogaXByb2M6IENvbnZlcnQgdG8g
dXNlIHRoZSBuZXcgRUNBTSBjb25zdGFudHMKICAgICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9s
cGllcmFsaXNpL3BjaS9jLzMzM2VjOWQzY2MKWzQvNV0gUENJOiB2bWQ6IFVwZGF0ZSB0eXBlIG9m
IHRoZSBfX2lvbWVtIHBvaW50ZXJzCiAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbHBpZXJh
bGlzaS9wY2kvYy84OTA5NGMxMmVhCls1LzVdIFBDSTogeGdlbmU6IFJlbW92ZWQgdW51c2VkICIu
YnVzX3NoaWZ0IiBpbml0aWFsaXNlcnMgZnJvbSBwY2kteGdlbmUuYwogICAgICBodHRwczovL2dp
dC5rZXJuZWwub3JnL2xwaWVyYWxpc2kvcGNpL2MvM2RjNjI1MzJhNQoKVGhhbmtzLApMb3Jlbnpv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
