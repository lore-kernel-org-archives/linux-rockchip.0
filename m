Return-Path: <SRS0=uTbi=FM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 235C9C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 21:06:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6A3623B04
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Dec 2020 21:06:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D6A3623B04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=4QME35yXnsV49mK1jduc6bAZQxVbnx2iW+8r+YbgIxI=; b=Pcp3XGD65a1Ru+acZqJSQSgaP
	LVbAr/RF1v/KNGJJvTZYVxl7e/uRxkcu08EcZNYXjuPgv9XLJcCsC+qELxquLzLpMSwCrdRsgx+C5
	MZ4nA4amvcKuYb7aj3CxEdROBgQD1z7oABeuO+0mGYgCBRIZ2tuVbGc4z+MMZ7+pGya237ilvhBvb
	N453FHOfkajIZwYhhIRalg241ILhev1KlSm4jXfD+oexIRwGWAvT4j7O6P+56kk1d9d06XthNmvX1
	eWVxHinO3K1hFIaOCg6Np2f4rPHOEmJsu6giIRK8JdUIpGO/XQYEkylHbASICUO6QAh7rs6gD3r5L
	KTN+KSoLA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmkBg-0005vd-Mr; Tue, 08 Dec 2020 21:06:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmkBc-0005uh-Gy; Tue, 08 Dec 2020 21:06:17 +0000
Date: Tue, 8 Dec 2020 15:06:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607461575;
 bh=fSoNQRcc0LZ9Vd4mfNnsBvZ5tqGU/FOK1XZtvccEZA0=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=c7AcH56Thqe+4NCEmqVgXEzAwWClmNtrpb8HtX8PCFxHBUz8Fs68Cj+dMGuehEUvc
 19RjHSE/mjUAt9FlbAu7gSUO0l6+zLTWnm1oiVWlK13pSCawfo2A9v5u7Gp9YKQdP5
 Cii+EnPfpluaZhUhZSGOVp63ldAhb0L2IfPzbDPUL7gbtYEr76QGCbuqnWnToi0la6
 vQvXAGU1s3VYsHFMq6LK6AzvArf88/G4IZYY7o6iXlHhvKskJBykRi7Dze0jVTCeWF
 6zncRzClJoP3Ofzut9MEVgANCxGWCl41bJjUQMHjcNabScCR+A4+8LCnl9bqALN0hM
 aiCUVLDOpIjqA==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201208210613.GA2420289@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201208154150.20978-1-michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201208_160616_646207_B367DBCA 
X-CRM114-Status: GOOD (  12.82  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

WytjYyBRaWFuXQoKT24gVHVlLCBEZWMgMDgsIDIwMjAgYXQgMDQ6NDE6NTBQTSArMDEwMCwgTWlj
aGFlbCBXYWxsZSB3cm90ZToKPiBIaSBMb3JlbnpvLCBLcnp5c3p0b2YsCj4gCj4gPk9uIFN1biwg
MjkgTm92IDIwMjAgMjM6MDc6MzggKzAwMDAsIEtyenlzenRvZiBXaWxjennFhHNraSB3cm90ZToK
PiA+PiBVbmlmeSBFQ0FNLXJlbGF0ZWQgY29uc3RhbnRzIGludG8gYSBzaW5nbGUgc2V0IG9mIHN0
YW5kYXJkIGNvbnN0YW50cwo+ID4+IGRlZmluaW5nIG1lbW9yeSBhZGRyZXNzIHNoaWZ0IHZhbHVl
cyBmb3IgdGhlIGJ5dGUtbGV2ZWwgYWRkcmVzcyB0aGF0IGNhbgo+ID4+IGJlIHVzZWQgd2hlbiBh
Y2Nlc3NpbmcgdGhlIFBDSSBFeHByZXNzIENvbmZpZ3VyYXRpb24gU3BhY2UsIGFuZCB0aGVuCj4g
Pj4gbW92ZSBuYXRpdmUgUENJIEV4cHJlc3MgY29udHJvbGxlciBkcml2ZXJzIHRvIHVzZSBuZXds
eSBpbnRyb2R1Y2VkCj4gPj4gZGVmaW5pdGlvbnMgcmV0aXJpbmcgYW55IGRyaXZlci1zcGVjaWZp
YyBvbmVzLgo+ID4+IAo+ID4+IFRoZSBFQ0FNICgiRW5oYW5jZWQgQ29uZmlndXJhdGlvbiBBY2Nl
c3MgTWVjaGFuaXNtIikgaXMgZGVmaW5lZCBieSB0aGUKPiA+PiBQQ0kgRXhwcmVzcyBzcGVjaWZp
Y2F0aW9uIChzZWUgUENJIEV4cHJlc3MgQmFzZSBTcGVjaWZpY2F0aW9uLCBSZXZpc2lvbgo+ID4+
IDUuMCwgVmVyc2lvbiAxLjAsIFNlY3Rpb24gNy4yLjIsIHAuIDY3NiksIHRodXMgbW9zdCBoYXJk
d2FyZSBzaG91bGQKPiA+PiBpbXBsZW1lbnQgaXQgdGhlIHNhbWUgd2F5Lgo+ID4+IAo+ID4+IFsu
Li5dCj4gPgo+ID5BcHBsaWVkIHRvIHBjaS9lY2FtLCB0aGFua3MhCj4gPgo+ID5bMS81XSBQQ0k6
IFVuaWZ5IEVDQU0gY29uc3RhbnRzIGluIG5hdGl2ZSBQQ0kgRXhwcmVzcyBkcml2ZXJzCj4gPiAg
ICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbHBpZXJhbGlzaS9wY2kvYy9mM2MwN2NmNjkyCj4g
PlsyLzVdIFBDSTogdGh1bmRlci1wZW06IEFkZCBjb25zdGFudCBmb3IgY3VzdG9tICIuYnVzX3No
aWZ0IiBpbml0aWFsaXNlcgo+ID4gICAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL2xwaWVyYWxp
c2kvcGNpL2MvM2MzODU3OTI2Mwo+ID5bMy81XSBQQ0k6IGlwcm9jOiBDb252ZXJ0IHRvIHVzZSB0
aGUgbmV3IEVDQU0gY29uc3RhbnRzCj4gPiAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbHBp
ZXJhbGlzaS9wY2kvYy8zMzNlYzlkM2NjCj4gPls0LzVdIFBDSTogdm1kOiBVcGRhdGUgdHlwZSBv
ZiB0aGUgX19pb21lbSBwb2ludGVycwo+ID4gICAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL2xw
aWVyYWxpc2kvcGNpL2MvODkwOTRjMTJlYQo+ID5bNS81XSBQQ0k6IHhnZW5lOiBSZW1vdmVkIHVu
dXNlZCAiLmJ1c19zaGlmdCIgaW5pdGlhbGlzZXJzIGZyb20gcGNpLXhnZW5lLmMKPiA+ICAgICAg
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9scGllcmFsaXNpL3BjaS9jLzNkYzYyNTMyYTUKPiAKPiBQ
YXRjaCAxLzUgYnJlYWtzIExTMTAyOEEgYm9hcmRzOgoKSSB0ZW1wb3JhcmlseSBkcm9wcGVkIHRo
aXMgc2VyaWVzIHdoaWxlIHdlIGZpZ3VyZSBvdXQgd2hhdCB3ZW50IHdyb25nCmhlcmUuCgpCam9y
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
