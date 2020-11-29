Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18A2CC3E8C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D7092084C
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 23:08:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="p8u7nSnM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D7092084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KmijjTFuO4xrQXXSGGwTEfEclB8eYpWqy2werEYa710=; b=p8u7nSnMthBRyrDWOHkwvhwXlG
	yuEQWoLkTyrKEYcRV9tpQRi4SFM5cxN9sirm1JRq3n0Vka8SeIU0lQDXHqc6ezzhKlGvKUQTSxdTb
	M/CPSERgWes7jz5IcV8qT1NPZ4FohfYYphy9QKlkTB6XKGTHHZnRqx0HhOor3wKCBLvhn4y9sHYLW
	1hC0zjBIbJt9BbDGCrNH2XGST/xvlZPLpGsByVJ05AxI+wZuTE2cdHfFY3v9CY8SJttKrXqz4zinB
	XW+5TE0Kci89KXiMWCawXTiwxUnG7PLVBg0a9VNsmwhykAekA1ePQyajWRGDdvAKD8GMFkFIU592I
	6gvQgVxA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjVnO-00025P-KQ; Sun, 29 Nov 2020 23:07:54 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjVnJ-00022z-63; Sun, 29 Nov 2020 23:07:50 +0000
Received: by mail-wr1-f68.google.com with SMTP id e7so13083062wrv.6;
 Sun, 29 Nov 2020 15:07:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dIsjLfFDP99Dz5MgIeEC3kYmopeb//2rrPq0h43VXLw=;
 b=fN7Nm034F3uSuOaJ4jbfpOkUYUIHOCRLX8Q6hTb/KSJXNVStb4UvikKJurLzEV9u41
 BA6+1fzXPgwVtXgXObUbQ03WOAqXPV9fenIAka4oCtuLP7cfUt/QivSPrBU9HgtH5qWS
 f41GfIUHyCiBowaGUeD1w0BuTOGP2eXACI1AmV5uWybvPsmq4nCV7BzYlBHT0GaJbKfb
 tyJAkwOQ0DtVdys5pR0mRzjzfnHHUIn/FRgSrAnlpIsX85FBVLYYJT2zHqCPW4XZ9O3K
 PWTpkpzCzVj05KP1WIqCIpDqbuP6rwpcAlXj3LjBazc9DgUk+sxubBS1A/Uk5gBb30/6
 V1Kg==
X-Gm-Message-State: AOAM533lgLYL3It7JifXhlaBfFcQX1mcU1uzuR1rdvdKifnFYRZWGQb9
 D/Znqls/8iRpizgkPiDcFmM=
X-Google-Smtp-Source: ABdhPJz/dkK+2g8rJ248iKa8tTMH3iMxLDK3ZiUyWbXRCDA7ANZkmFRz+HppIcBOB0AKWrROKjqraw==
X-Received: by 2002:a5d:4892:: with SMTP id g18mr18707990wrq.365.1606691266382; 
 Sun, 29 Nov 2020 15:07:46 -0800 (PST)
Received: from workstation.lan ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id d2sm24831005wrn.43.2020.11.29.15.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Nov 2020 15:07:45 -0800 (PST)
From: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express drivers
Date: Sun, 29 Nov 2020 23:07:38 +0000
Message-Id: <20201129230743.3006978-1-kw@linux.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_180749_334475_1A319CBF 
X-CRM114-Status: GOOD (  17.49  )
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

VW5pZnkgRUNBTS1yZWxhdGVkIGNvbnN0YW50cyBpbnRvIGEgc2luZ2xlIHNldCBvZiBzdGFuZGFy
ZCBjb25zdGFudHMKZGVmaW5pbmcgbWVtb3J5IGFkZHJlc3Mgc2hpZnQgdmFsdWVzIGZvciB0aGUg
Ynl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQgY2FuCmJlIHVzZWQgd2hlbiBhY2Nlc3NpbmcgdGhlIFBD
SSBFeHByZXNzIENvbmZpZ3VyYXRpb24gU3BhY2UsIGFuZCB0aGVuCm1vdmUgbmF0aXZlIFBDSSBF
eHByZXNzIGNvbnRyb2xsZXIgZHJpdmVycyB0byB1c2UgbmV3bHkgaW50cm9kdWNlZApkZWZpbml0
aW9ucyByZXRpcmluZyBhbnkgZHJpdmVyLXNwZWNpZmljIG9uZXMuCgpUaGUgRUNBTSAoIkVuaGFu
Y2VkIENvbmZpZ3VyYXRpb24gQWNjZXNzIE1lY2hhbmlzbSIpIGlzIGRlZmluZWQgYnkgdGhlClBD
SSBFeHByZXNzIHNwZWNpZmljYXRpb24gKHNlZSBQQ0kgRXhwcmVzcyBCYXNlIFNwZWNpZmljYXRp
b24sIFJldmlzaW9uCjUuMCwgVmVyc2lvbiAxLjAsIFNlY3Rpb24gNy4yLjIsIHAuIDY3NiksIHRo
dXMgbW9zdCBoYXJkd2FyZSBzaG91bGQKaW1wbGVtZW50IGl0IHRoZSBzYW1lIHdheS4KCk1vc3Qg
b2YgdGhlIG5hdGl2ZSBQQ0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMgZGVmaW5lIHRoZWly
IEVDQU0tcmVsYXRlZApjb25zdGFudHMsIG1hbnkgb2YgdGhlc2UgY291bGQgYmUgc2hhcmVkLCBv
ciB1c2Ugb3Blbi1jb2RlZCB2YWx1ZXMgd2hlbgpzZXR0aW5nIHRoZSAiLmJ1c19zaGlmdCIgZmll
bGQgb2YgdGhlICJzdHJ1Y3QgcGNpX2VjYW1fb3BzIi4KCkFsbCBvZiB0aGUgbmV3bHkgYWRkZWQg
Y29uc3RhbnRzIHNob3VsZCByZW1vdmUgYW1iaWd1aXR5IGFuZCByZWR1Y2UgdGhlCm51bWJlciBv
ZiBvcGVuLWNvZGVkIHZhbHVlcywgYW5kIGFsc28gY29ycmVsYXRlIG1vcmUgc3Ryb25nbHkgd2l0
aCB0aGUKZGVzY3JpcHRpb25zIGluIHRoZSBhZm9yZW1lbnRpb25lZCBzcGVjaWZpY2F0aW9uIChz
ZWUgVGFibGUgNy0xCiJFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFkZHJlc3MgTWFwcGluZyIsIHAu
IDY3NykuCgpTdWdnZXN0ZWQtYnk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+
ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBXaWxjennFhHNraSA8a3dAbGludXguY29tPgoKLS0t
IApDaGFuZ2VkIGluIHY2OgogIENvbnZlcnRlZCBzaW5nbGUgcGF0Y2ggaW50byBhIHNlcmllcy4K
ICBEcm9wcGVkIGNoYW5nZXMgcmVsYXRlZCB0byBQUEMgNHh4IHBsYXRmb3JtLgogIFJlZmFjdG9y
ZWQgcGNpX2VjYW1fbWFwX2J1cygpIHNvIHRoYXQgYnVzLCBkZXZpY2UgZnVuY3Rpb24gYW5kIG9m
ZnNldAogIGFyZSBjb3JyZWN0bHkgbWFza2VkLCBsaW1pdGluZyBvZmZzZXQgdG8gNEsgYXMgcGVy
IHRoZSBQQ0kgRXhwcmVzcwogIFNwZWNpZmljYXRpb24uICBBZnRlciB0aGUgcmVmYWN0b3IgdGhp
cyBmdW5jdGlvbiB3aWxsIG5vdyB1c2Ugc2Vuc2libGUKICBkZWZhdWx0cyBhbGxvd2luZyBmb3Ig
cmVtb3ZhbCBvZiB0aGUgIi5idXNfc2hpdCIgaW5pdGlhbGlzZXIgZnJvbSBhbGwKICB0aGUgdXNl
cnMgb2YgdGhlICJlY2FtX29wcyIgc3RydWN0dXJlIHdobyBkbyBub3QgdXNlIGEgbm9uLXN0YW5k
YXJkCiAgRUNBTSBidXMgc2hpdCB2YWx1ZXMuCgpDaGFuZ2VkIGluIHY1OgogIFJlbW92ZWQgdW51
c2VkIGNvbnN0YW50ICJQQ0lFX0VDQU1fREVWX1NISUZUIi4KICBSZWZhY3RvcmVkIHBwYzR4eF9w
Y2lleF9nZXRfY29uZmlnX2Jhc2UoKSBzbyB0aGF0IHRoZSAib2Zmc2V0IgogIHBhcmFtZXRlciBj
YW4gYmUgcGFzc2VkIHRvIHNvIHRoYXQgdGhlIFBDSUVfRUNBTV9PRkZTRVQoKSBtYWNybwogIGNh
biBiZSB1c2VkLgogIFVzZWQgdGhlIEFMSUdOX0RPV04oKSBtYWNybyB3aGVyZSAzMiBiaXQgYWxp
Z25tZW50IGlzIHJlcXVpcmVkCiAgaW5zdGVhZCB1c2luZyB0aGUgMHhmZmMgbWFzay4KICBBZGRl
ZCBDRkdfQUREUl9DRkdfVFlQRV8xIG1hY3JvIHRvIHBjaS9jb250cm9sbGVyL3BjaWUtaXByb2Mu
YyB0bwogIGRlbm90ZSB0aGF0IHRoaXMgaXMgYSBjb25maWd1cmF0aW9uIHR5cGUgMSBhZGRyZXNz
IGFuZCBhY2Nlc3MgdHlwZS4KICBSZWZhY3RvcmVkIGJvdW5kYXJ5IGNoZWNrIGluIHBjaS9jb250
cm9sbGVyL3ZtZC5jIGFzIHVzZWQgYnkgdGhlCiAgdm1kX2NmZ19hZGRyKCkgZnVuY3Rpb24gZm9s
bG93aW5nIGFkZGl0aW9uIG9mIHRoZSBQQ0lFX0VDQU1fT0ZGU0VUKCkKICBtYWNyby4KICBDaGFu
Z2VkIHRoZSAiYnVzLT5udW1iZXIiIHRvIHNpbXBseSBwYXNzIHRoZSAiYnVzIiBhcmd1bWVudCBp
biB0aGUKICBQQ0lFX0VDQU1fT0ZGU0VUKCkgbWFjcm8uCgpDaGFuZ2VkIGluIHY0OgogIFJlbW92
ZWQgY29uc3RhbnRzIHJlbGF0ZWQgdG8gIkNBTSIuCiAgQWRkZWQgbW9yZSBwbGF0Zm9ybXMgYW5k
IGRldmljZXMgdGhhdCBjYW4gdXNlIG5ldyBFQ0FNIG1hY3JvcyBhbmQKICBjb25zdGFudHMuCiAg
UmVtb3ZlZCB1bnVzZWQgIi5idXNfc2hpZnQiIGluaXRpYWxpc2VycyBmcm9tIHBjaS14Z2VuZS5j
IGFzCiAgeGdlbmVfcGNpZV9tYXBfYnVzKCkgZGlkIG5vdCB1c2UgdGhlc2UuCgpDaGFuZ2VzIGlu
IHYzOgogIFVwZGF0ZWQgY29tbWl0IG1lc3NhZ2Ugd29yZGluZy4KICBVcGRhdGVkIHJlZ2FyZGlu
ZyBjdXN0b20gRUNBTSBidXMgc2hpZnQgdmFsdWVzIGFuZCBjb25jZXJuaW5nIFBDSSBiYXNlCiAg
Y29uZmlndXJhdGlvbiBzcGFjZSBhY2Nlc3MgZm9yIFR5cGUgMSBhY2Nlc3MuCiAgUmVmYWN0b3Jl
ZCByb2NrY2hpcF9wY2llX3JkX290aGVyX2NvbmYoKSBhbmQgcm9ja2NoaXBfcGNpZV93cl9vdGhl
cl9jb25mKCkKICBhbmQgcmVtb3ZlZCB0aGUgImJ1c2RldiIgdmFyaWFibGUuCiAgUmVtb3ZlZCBz
dXJwbHVzICJyZWxidXMiIHZhcmlhYmxlIGZyb20gbndsX3BjaWVfbWFwX2J1cygpIGFuZAogIHhp
bGlueF9wY2llX21hcF9idXMoKS4KICBSZW5hbWVkIHRoZSBQQ0lFX0VDQU1fQUREUigpIG1hY3Jv
IHRvIFBDSUVfRUNBTV9PRkZTRVQoKS4KCkNoYW5nZXMgaW4gdjI6CiAgVXNlIFBDSUVfRUNBTV9B
RERSIG1hY3JvIHdoZW4gY29tcHV0aW5nIEVDQU0gYWRkcmVzcyBvZmZzZXQsIGJ1dCBkcm9wCiAg
UENJX1NMT1QgYW5kIFBDSV9GVU5DIG1hY3JvcyBmcm9tIHRoZSBQQ0lFX0VDQU1fQUREUiBtYWNy
byBpbiBmYXZvdXIKICBvZiB1c2luZyBhIHNpbmdsZSB2YWx1ZSBmb3IgdGhlIGRldmljZS9mdW5j
dGlvbi4KCktyenlzenRvZiBXaWxjennFhHNraSAoNSk6CiAgUENJOiBVbmlmeSBFQ0FNIGNvbnN0
YW50cyBpbiBuYXRpdmUgUENJIEV4cHJlc3MgZHJpdmVycwogIFBDSTogdGh1bmRlci1wZW06IEFk
ZCBjb25zdGFudCBmb3IgY3VzdG9tICIuYnVzX3NoaXQiIGluaXRpYWxpc2VyCiAgUENJOiBpcHJv
YzogQ29udmVydCB0byB1c2UgdGhlIG5ldyBFQ0FNIGNvbnN0YW50cwogIFBDSTogdm1kOiBVcGRh
dGUgdHlwZSBvZiB0aGUgX19pb21lbSBwb2ludGVycwogIFBDSTogeGdlbmU6IFJlbW92ZWQgdW51
c2VkICIuYnVzX3NoaWZ0IiBpbml0aWFsaXNlcnMgZnJvbSBwY2kteGdlbmUuYwoKIGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtYWwuYyAgICAgICAgfCAxMiArKy0tLS0tLQogZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1oaXNpLmMgICAgICB8ICAyIC0tCiBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jICAgICAgIHwgMTMgKystLS0tLS0tCiBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaS1ob3N0LWdlbmVyaWMuYyAgIHwgIDEgLQogZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2ktdGh1bmRlci1lY2FtLmMgICB8ICAxIC0KIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpLXRodW5kZXItcGVtLmMgICAgfCAxMyArKysrKysrLS0KIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpLXhnZW5lLmMgICAgICAgICAgfCAgMiAtLQogZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLWJyY21zdGIuYyAgICAgICB8IDE2ICsrLS0tLS0tLS0tCiBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtaXByb2MuYyAgICAgICAgIHwgMzEgKysrKysrLS0tLS0tLS0tLS0tLS0t
CiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMjcgKysrKysr
KysrLS0tLS0tLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICAg
IHwgIDggKy0tLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtdGFuZ28uYyAgICAgICAg
IHwgIDEgLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXhpbGlueC1ud2wuYyAgICB8ICA5
ICsrLS0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXhpbGlueC5jICAgICAgICB8IDEx
ICsrLS0tLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3ZtZC5jICAgICAgICAgICAgICAgIHwg
MTkgKysrKysrLS0tLS0tLQogZHJpdmVycy9wY2kvZWNhbS5jICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IDIzICsrKysrKysrKystLS0tLQogaW5jbHVkZS9saW51eC9wY2ktZWNhbS5oICAgICAg
ICAgICAgICAgICAgICB8IDI3ICsrKysrKysrKysrKysrKysrKwogMTcgZmlsZXMgY2hhbmdlZCwg
OTYgaW5zZXJ0aW9ucygrKSwgMTIwIGRlbGV0aW9ucygtKQoKLS0gCjIuMjkuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
