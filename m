Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED2FC4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 21:38:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BBF7206DC
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 21:38:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qeCFD0MM";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjQdrKVi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BBF7206DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=86GrfCOoYNskk2nyMfvXyFfUgbjqNiqz+EH/ep9GA5o=; b=qeCFD0MMKS1iVX5/HDbYOJpkY
	TSg6JCXAK3NgUD/3dzg/OSCgcBt9gUE72LepZqT3q0bCXddsHVEuInlj88gbn71lpw2QB0rL6AEK+
	WeNe8foJ08zqKRDwNUZrobzLnFCQalFAcP3vWVCNxXHzPRyDHXKlKu1I/+iUbBxDsDyirzkGkJ2gH
	Pab33lMA9o9gt6pVws/yIgzwZcqENO4UUXYUqSUliUpsEzTQ+Ey+aZRPNlfdReWCv3UlyNV9AHny9
	yUuLDriKls+0lH1elfdvAfTtYz0xFaTxKyxcGyo/15Fz1vG7iDq8OAWkovEvBL7hMObGF2QDxTded
	rp2KaKHSA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOSkf-0003R1-9V; Fri, 02 Oct 2020 21:38:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOSka-0003QD-OP; Fri, 02 Oct 2020 21:38:01 +0000
Received: from localhost (170.sub-72-107-125.myvzw.com [72.107.125.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF844206DC;
 Fri,  2 Oct 2020 21:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601674679;
 bh=2wUdEhOpFAzuGlqi1DcVIiKuTKGFfto/06HTJ2Vk+hU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=AjQdrKVifpCWu4O1GUNo0hg0cxeLf1MaR20DjS9j7JojAk/TlCImJvbDoRd2O4rzu
 vGfSJ1AXJWYm5/FOVmLSSIv0CTpYMfKF3PxJLvclf0QUSu32KRix3OmkORBWEZoaXv
 J7jftYLWG9y5NUov+kCwDzV3/AugSFWcq/Z1FsUQ=
Date: Fri, 2 Oct 2020 16:37:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: [PATCH v3] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20201002213757.GA2827924@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002202017.GA95575@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_173801_031272_1EE6C92B 
X-CRM114-Status: GOOD (  21.20  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMDIsIDIwMjAgYXQgMTA6MjA6MTdQTSArMDIwMCwgS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIHdyb3RlOgo+IEhpIFJvYiwKPiAKPiBbLi4uXQo+ID4gV2hhdCBhYm91dCB2bWQgd2hp
Y2ggSSBtZW50aW9uZWQ/IEkgYWxzbyBmb3VuZCBpcHJvYyBhbmQgYnJjbXN0YiBhcmUKPiA+IEVD
QU0gKHdlbGwsIHNhbWUgc2hpZnRzLCBidXQgaW5kaXJlY3QgYWRkcmVzc2luZykuCj4gWy4uLl0K
PiAKPiBJIHdhbnRlZCB0byBjb3ZlciB0aGVzZSAoYW5kIHNvbWUgb3RoZXJzIEkgYWxzbyBmb3Vu
ZCkgaW4gYSBzZXBhcmF0ZQo+IHBhdGNoLCBlc3BlY2lhbGx5IHNpbmNlIHNvbWUgb2YgdGhlIGRy
aXZlcnMgZG9uJ3QgZXhwbGljaXRseSBjbGFpbSB0bwo+IHN1cHBvcnQgRUNBTSAtIGJ1dCBJIHdp
bGwgaW5jbHVkZSB0aGVzZSBjaGFuZ2VzIGluIHRoZSB2NC4gCj4gIAo+ID4gPiArLwo+ID4gPiAr
ICogRW5oYW5jZWQgQ29uZmlndXJhdGlvbiBBY2Nlc3MgTWVjaGFuaXNtIChFQ0FNKQo+ID4gPiAr
ICoKPiA+ID4gKyAqIE4uQi4gVGhpcyBpcyBhIG5vbi1zdGFuZGFyZCBwbGF0Zm9ybS1zcGVjaWZp
YyBFQ0FNIGJ1cyBzaGlmdCB2YWx1ZS4gIEZvcgo+ID4gPiArICogc3RhbmRhcmQgdmFsdWVzIGRl
ZmluZWQgaW4gdGhlIFBDSSBFeHByZXNzIEJhc2UgU3BlY2lmaWNhdGlvbiBzZWUKPiA+ID4gKyAq
IGluY2x1ZGUvbGludXgvcGNpLWVjYW0uaC4KPiA+ID4gKyAqLwo+ID4gPiArI2RlZmluZSBYR0VO
RV9QQ0lFX0VDQU1fQlVTX1NISUZUICAgICAgMTYKPiA+IAo+ID4gSXNuJ3QgdGhpcyBqdXN0IENB
TT8gVGhvdWdoIHBlcmhhcHMgQ0FNIG9uIFBDSWUgaXMgbm90IHN0YW5kYXJkLi4uCj4gPiAKPiA+
IEZvciBDQU0sIHRoZXJlJ3MgYWxzbyB0ZWdyYSwgZnRwY2kxMDAsIG12ZWJ1LCBhbmQgdmVyc2F0
aWxlLiBJIHRoaW5rCj4gPiBJJ2QgZHJvcCBDQU0gZnJvbSB0aGlzIHBhdGNoIGFuZCBkbyBhbGwg
b2YgdGhvc2UgaW4gYSBzZXBhcmF0ZSBwYXRjaC4KPiAKPiBXaWxsIGRvLgo+IAo+IEJqb3JuIHdh
cyBhbHNvIG5vdCBjb252aW5jZWQgYWJvdXQgcmVmZXJyaW5nIHRvIHRoaW5ncyBhcyAiQ0FNIiBz
aW5jZQo+IHRoZSBzcGVjaWZpY2F0aW9uICh0aGUgb25lIEkgcXVvdGVkIGluIHRoZSBwYXRjaCkg
ZG9lcyBub3QgbmFtZSBpdCBhcwo+IHN1Y2gsIGFuZCByYXRoZXIgcmVmZXJzIHRvIGl0IGFzIFR5
cGUgMSBhY2Nlc3Mgb2YgdGhlIFBDSSBidXMKPiBjb25maWd1cmF0aW9uIHNwYWNlLgoKIlR5cGUg
MSIgaGFzIHR3byBzcGVjaWZpYyBtZWFuaW5ncyBpbiBQQ0ksIGFuZCBuZWl0aGVyIGlzIHF1aXRl
IHRoaXMKY29uZmlnIGFjY2VzcyBtZWNoYW5pc206CgogIDEpICJUeXBlIDAgRnVuY3Rpb25zIiBo
YXZlIGEgIlR5cGUgMCBDb25maWd1cmF0aW9uIFNwYWNlIEhlYWRlciIgLS0KICAgICB0aGVzZSBh
cmUgYmFzaWNhbGx5IGVuZHBvaW50IGRldmljZXMuICAiVHlwZSAxIiBGdW5jdGlvbnMgaGF2ZQog
ICAgIFR5cGUgMSBoZWFkZXJzIGFuZCBhcmUgUENJLXRvLVBDSSBicmlkZ2VzIChSb290IFBvcnRz
LCBTd2l0Y2hlcywKICAgICBCcmlkZ2VzIGluIFBDSWUpLgoKICAyKSAiVHlwZSAwIiBjb25maWcg
dHJhbnNhY3Rpb25zIHRhcmdldCBhIGRldmljZSBvbiB0aGUgY3VycmVudCBidXMsCiAgICAgaS5l
LiwgdGhlIHJlY2lwaWVudCBkb2VzIG5vdCBuZWVkIHRvIGRlY29kZSB0aGUgYnVzIG51bWJlciBp
biB0aGUKICAgICB0cmFuc2FjdGlvbi4gIEEgIlR5cGUgMSIgY29uZmlnIHRyYW5zYWN0aW9uIG5l
ZWRzIHRvIGJlIHJvdXRlZAogICAgIHRocm91Z2ggb25lIG9yIG1vcmUgYnJpZGdlcy4gIFRoZSBs
YXN0IGJyaWRnZSwgd2hlcmUgdGhlIGJ1cwogICAgIG51bWJlciBpbiB0aGUgdHJhbnNhY3Rpb24g
bWF0Y2hlcyB0aGUgYnJpZGdlJ3Mgc2Vjb25kYXJ5IGJ1cwogICAgIG51bWJlciwgY29udmVydHMg
dGhlIHRyYW5zYWN0aW9uIHRvIGEgVHlwZSAwIHRyYW5zYWN0aW9uIG9uIGl0cwogICAgIHNlY29u
ZGFyeSBidXMuCgpUaGUgIkNBTSIgZGV2aWNlcyB0aGF0IHVzZSBhIDE2LWJpdCBzaGlmdCBmb3Ig
dGhlIGJ1cyBudW1iZXIgYXJlIHNvcnQKb2Ygc2ltaWxhciB0byB0aGUgIkNvbmZpZ3VyYXRpb24g
TWVjaGFuaXNtICMxIiBkZXNjcmlwdGlvbiBpbiBQQ0kKcjMuMCwgc2VjIDMuMi4yLjMuMiwgYnV0
IGl0J3Mgbm90IHJlYWxseSBhIGdvb2QgbWF0Y2ggYmVjYXVzZSB0aGV5CmRvbid0IGltcGxlbWVu
dCB0aGUgeDg2LXNwZWNpZmljIHBhcnRzIGxpa2UgSS9PIHBvcnQgcmVnaXN0ZXJzIGF0CjB4Y2Y4
IGFuZCAweGNmYy4gIEFsc28sIHRoYXQgbWVjaGFuaXNtIG9ubHkgYWxsb3dzIGFjY2VzcyB0byB0
aGUgZmlyc3QKMjU2IGJ5dGVzIG9mIGNvbmZpZyBzcGFjZSwgYW5kIHNvbWUvYWxsIG9mIHRoZXNl
IGV4dGVuZCB0aGUgYWRkcmVzcwpmb3JtYXQgc28gdGhleSBjYW4gYWRkcmVzcyBleHRlbmRlZCBj
b25maWcgc3BhY2UgKG9mZnNldHMKMHgxMDAtMHhmZmYpLgoKQmpvcm4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
