Return-Path: <SRS0=uTbi=FM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8C4AC4361B
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 21:11:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B85D207AA
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 21:11:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B85D207AA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=walle.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WDItO1U9naUJNH5xhBEMNZ+hnhYEf4brEwoFs6obBwE=; b=1oqMLHdtTUYMoVhYKe0YTe2ir
	0C/bE8qF8mHaCc8WjkAdRnFzkD310PCt0nPSEEaAnimbrMtMv4Lbt6iMAVQg2rbgIt57zqwaJDv1J
	+eFWtggqZo+5IabtZWQbXgZZ9UlAMZmagoOHM6boZyXsAnBO5tEomv0ehCmW7z328EXg7Blj4XRi+
	OzR1qh2JtDKZmP9lJHiEUadW38Y3+NaV8VGPIflEFsgDMZPrK8iVPe5CsqHaqTuu9JnkH4Pl2YHnb
	9K/dvwi+e+Rs6VW/ahw4fP7uCkD3Vd+pyLc+NA2IoqicIHTsw7i8yEJK04F+duwLS9PSLNYzZQ+8M
	p1sPZejKw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmkGb-0006da-B7; Tue, 08 Dec 2020 21:11:25 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmkGV-0006cD-TQ; Tue, 08 Dec 2020 21:11:21 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3E93822EE4;
 Tue,  8 Dec 2020 22:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1607461873;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rEFjtBVF86/OHAKEUK7w4OIQbvBmdzPeOud2sztujh8=;
 b=FkpapXYkkYDM2Wa6lDGwZbcxVEW5J57qlVbjxNxZm4kOHYNmmsfnqcpb1xD6/p1EX4eQJ4
 R/96LjaUeq7PPPZZows0e9l9dJ7irfcHr0KCnHE2ePf6tsgDCDnLwy5ChY4wJbhJtAIjR/
 4LO2U5+cRQRXidZgmTLDZVXZRW/RDUE=
MIME-Version: 1.0
Date: Tue, 08 Dec 2020 22:11:11 +0100
From: Michael Walle <michael@walle.cc>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
In-Reply-To: <20201208210613.GA2420289@bjorn-Precision-5520>
References: <20201208210613.GA2420289@bjorn-Precision-5520>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <be626f557ebf580babebad5457023617@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201208_161120_078339_9F5D5249 
X-CRM114-Status: GOOD (  14.50  )
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, paulus@samba.org, thomas.petazzoni@bootlin.com,
 jonnyc@amazon.com, toan@os.amperecomputing.com, will@kernel.org,
 robh@kernel.org, lorenzo.pieralisi@arm.com, mpe@ellerman.id.au,
 michal.simek@xilinx.com, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Qian Cai <qcai@redhat.com>, rjui@broadcom.com,
 f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
 Jonathan.Cameron@huawei.com, bhelgaas@google.com, jonathan.derrick@intel.com,
 sbranden@broadcom.com, wangzhou1@hisilicon.com, rrichter@marvell.com,
 linuxppc-dev@lists.ozlabs.org, nsaenzjulienne@suse.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gMjAyMC0xMi0wOCAyMjowNiwgc2NocmllYiBCam9ybiBIZWxnYWFzOgo+IFsrY2MgUWlhbl0K
PiAKPiBPbiBUdWUsIERlYyAwOCwgMjAyMCBhdCAwNDo0MTo1MFBNICswMTAwLCBNaWNoYWVsIFdh
bGxlIHdyb3RlOgo+PiBIaSBMb3JlbnpvLCBLcnp5c3p0b2YsCj4+IAo+PiA+T24gU3VuLCAyOSBO
b3YgMjAyMCAyMzowNzozOCArMDAwMCwgS3J6eXN6dG9mIFdpbGN6ecWEc2tpIHdyb3RlOgo+PiA+
PiBVbmlmeSBFQ0FNLXJlbGF0ZWQgY29uc3RhbnRzIGludG8gYSBzaW5nbGUgc2V0IG9mIHN0YW5k
YXJkIGNvbnN0YW50cwo+PiA+PiBkZWZpbmluZyBtZW1vcnkgYWRkcmVzcyBzaGlmdCB2YWx1ZXMg
Zm9yIHRoZSBieXRlLWxldmVsIGFkZHJlc3MgdGhhdCBjYW4KPj4gPj4gYmUgdXNlZCB3aGVuIGFj
Y2Vzc2luZyB0aGUgUENJIEV4cHJlc3MgQ29uZmlndXJhdGlvbiBTcGFjZSwgYW5kIHRoZW4KPj4g
Pj4gbW92ZSBuYXRpdmUgUENJIEV4cHJlc3MgY29udHJvbGxlciBkcml2ZXJzIHRvIHVzZSBuZXds
eSBpbnRyb2R1Y2VkCj4+ID4+IGRlZmluaXRpb25zIHJldGlyaW5nIGFueSBkcml2ZXItc3BlY2lm
aWMgb25lcy4KPj4gPj4KPj4gPj4gVGhlIEVDQU0gKCJFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFj
Y2VzcyBNZWNoYW5pc20iKSBpcyBkZWZpbmVkIGJ5IHRoZQo+PiA+PiBQQ0kgRXhwcmVzcyBzcGVj
aWZpY2F0aW9uIChzZWUgUENJIEV4cHJlc3MgQmFzZSBTcGVjaWZpY2F0aW9uLCBSZXZpc2lvbgo+
PiA+PiA1LjAsIFZlcnNpb24gMS4wLCBTZWN0aW9uIDcuMi4yLCBwLiA2NzYpLCB0aHVzIG1vc3Qg
aGFyZHdhcmUgc2hvdWxkCj4+ID4+IGltcGxlbWVudCBpdCB0aGUgc2FtZSB3YXkuCj4+ID4+Cj4+
ID4+IFsuLi5dCj4+ID4KPj4gPkFwcGxpZWQgdG8gcGNpL2VjYW0sIHRoYW5rcyEKPj4gPgo+PiA+
WzEvNV0gUENJOiBVbmlmeSBFQ0FNIGNvbnN0YW50cyBpbiBuYXRpdmUgUENJIEV4cHJlc3MgZHJp
dmVycwo+PiA+ICAgICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9scGllcmFsaXNpL3BjaS9jL2Yz
YzA3Y2Y2OTIKPj4gPlsyLzVdIFBDSTogdGh1bmRlci1wZW06IEFkZCBjb25zdGFudCBmb3IgY3Vz
dG9tICIuYnVzX3NoaWZ0IiBpbml0aWFsaXNlcgo+PiA+ICAgICAgaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9scGllcmFsaXNpL3BjaS9jLzNjMzg1NzkyNjMKPj4gPlszLzVdIFBDSTogaXByb2M6IENv
bnZlcnQgdG8gdXNlIHRoZSBuZXcgRUNBTSBjb25zdGFudHMKPj4gPiAgICAgIGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvbHBpZXJhbGlzaS9wY2kvYy8zMzNlYzlkM2NjCj4+ID5bNC81XSBQQ0k6IHZt
ZDogVXBkYXRlIHR5cGUgb2YgdGhlIF9faW9tZW0gcG9pbnRlcnMKPj4gPiAgICAgIGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvbHBpZXJhbGlzaS9wY2kvYy84OTA5NGMxMmVhCj4+ID5bNS81XSBQQ0k6
IHhnZW5lOiBSZW1vdmVkIHVudXNlZCAiLmJ1c19zaGlmdCIgaW5pdGlhbGlzZXJzIGZyb20gcGNp
LXhnZW5lLmMKPj4gPiAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbHBpZXJhbGlzaS9wY2kv
Yy8zZGM2MjUzMmE1Cj4+IAo+PiBQYXRjaCAxLzUgYnJlYWtzIExTMTAyOEEgYm9hcmRzOgo+IAo+
IEkgdGVtcG9yYXJpbHkgZHJvcHBlZCB0aGlzIHNlcmllcyB3aGlsZSB3ZSBmaWd1cmUgb3V0IHdo
YXQgd2VudCB3cm9uZwo+IGhlcmUuCgpUaGFua3MsIGxldCBtZSBrbm93IGlmIEkgY2FuIHRlc3Qg
c29tZXRoaW5nIG9uIHRoZSBib2FyZC4KCi1taWNoYWVsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
