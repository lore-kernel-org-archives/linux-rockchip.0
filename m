Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 056F6C48BDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 08:23:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C173E613E8
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 08:23:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C173E613E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8PUI2znWpbMLoFdE/q7zZqDlO4LdonKA/CdA+1c3fo=; b=UatvaMufePvqT/
	AXjI430U48/jZnNrqfkC+r+o0qmLQG5oWGt1Z+TRC/yjs9ZmMVOAG0cyqha/0ywQqh+K176UUXdL3
	UoYXMBp/07iv2utR4PBfdOdXSq/Hpyw4tIt/6rGjer0w9HIY4YicLmiRzkul8XjdyzD+89NtgrgI0
	1zIXGb7mGRnlu/vt15dRWdrCYhPcyeqhNw3hm3nJQzHcvsEXpTGVZnH/SIQtrk7F4bWzbMuzDTUdG
	TdXrNvca07HQi3th5PqDV2chUx1vCUSIxHy9vVYEHzE6tvtzmS9Xz1buhzJ5YG5bvmxcYVxPue+cF
	ik+b2303eoQrO1UpZAWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwKdt-00DPlN-C0; Thu, 24 Jun 2021 08:23:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwKdq-00DPko-DM
 for linux-rockchip@lists.infradead.org; Thu, 24 Jun 2021 08:23:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BBF0613E8;
 Thu, 24 Jun 2021 08:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624522997;
 bh=6+8DC4IpeSttLdmm9MiRqdcSoNk3uI+zKuzqUGGQ0tI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PR8eWWcZxoaaR3PHZ+0yx3IkvkyHx21mNtuv5xgJeJmyJs1W6r+CbjgA+yHVKMkJL
 IWcK4EfdmE/lIZi3VujgYuhGPySCBnosd2qQI+fYUfVdERvbY9tIbkozvfgIs0K+mH
 NeknLrIKOm8FSkTEwJCOyJaRWzxUGIZWcQUhpnh/0R87DkzXQ6A83jGnlQ3CY2qapc
 6Y524qcucOMYihsEQ3UmMrIIZVWLU2OS2drXflYz1gIiWN5Cdc1/Jr3YltLXaNFlL+
 06A4yN2o82WCKI4p3tJU3nxEQ/cmtFBI9mG+HZopzmHC4TmIbRTBYnGYF335qDu6+I
 4PQuN+yfZaSlw==
Received: by pali.im (Postfix)
 id E3C5780E; Thu, 24 Jun 2021 10:23:14 +0200 (CEST)
Date: Thu, 24 Jun 2021 10:23:14 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: xxm <xxm@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, kernel test robot <lkp@intel.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v9 2/2] PCI: rockchip: Add Rockchip RK356X host
 controller driver
Message-ID: <20210624082314.mw3ilcufswmb635m@pali>
References: <20210506023448.169146-1-xxm@rock-chips.com>
 <20210506023544.169196-1-xxm@rock-chips.com>
 <20210623143333.GA15104@lpieralisi>
 <46b3f277-2bde-321d-b616-3f3b41259e4d@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46b3f277-2bde-321d-b616-3f3b41259e4d@rock-chips.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_012318_513682_A5EBF4D6 
X-CRM114-Status: GOOD (  13.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1cnNkYXkgMjQgSnVuZSAyMDIxIDEwOjA4OjU0IHh4bSB3cm90ZToKPiDlnKggMjAyMS82
LzIzIDIyOjMzLCBMb3JlbnpvIFBpZXJhbGlzaSDlhpnpgZM6Cj4gPiBPbiBUaHUsIE1heSAwNiwg
MjAyMSBhdCAxMDozNTo0NEFNICswODAwLCBTaW1vbiBYdWUgd3JvdGU6Cj4gPiA+ICtzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfc3RhcnRfbGluayhzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ID4gPiAr
ewo+ID4gPiArCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3JvY2tjaGlwX3Bj
aWUocGNpKTsKPiA+ID4gKwo+ID4gPiArCS8qIFJlc2V0IGRldmljZSAqLwo+ID4gPiArCWdwaW9k
X3NldF92YWx1ZV9jYW5zbGVlcChyb2NrY2hpcC0+cnN0X2dwaW8sIDApOwo+ID4gPiArCj4gPiA+
ICsJcm9ja2NoaXBfcGNpZV9lbmFibGVfbHRzc20ocm9ja2NoaXApOwo+ID4gPiArCj4gPiA+ICsJ
LyoKPiA+ID4gKwkgKiBQQ0llIHJlcXVpcmVzIHRoZSByZWZjbGsgdG8gYmUgc3RhYmxlIGZvciAx
MDDCtXMgcHJpb3IgdG8gcmVsZWFzaW5nCj4gPiA+ICsJICogUEVSU1QuIFNlZSB0YWJsZSAyLTQg
aW4gc2VjdGlvbiAyLjYuMiBBQyBTcGVjaWZpY2F0aW9ucyBvZiB0aGUgUENJCj4gPiA+ICsJICog
RXhwcmVzcyBDYXJkIEVsZWN0cm9tZWNoYW5pY2FsIFNwZWNpZmljYXRpb24sIDEuMS4gSG93ZXZl
ciwgd2UgZG9uJ3QKPiA+ID4gKwkgKiBrbm93IGlmIHRoZSByZWZjbGsgaXMgY29taW5nIGZyb20g
UkMncyBQSFkgb3IgZXh0ZXJuYWwgT1NDLiBJZiBpdCdzCj4gPiA+ICsJICogZnJvbSBSQywgc28g
ZW5hYmxpbmcgTFRTU00gaXMgdGhlIGp1c3QgcmlnaHQgcGxhY2UgdG8gcmVsZWFzZSAjUEVSU1Qu
Cj4gPiA+ICsJICogV2UgbmVlZCBtb3JlIGV4dHJhIHRpbWUgYXMgYmVmb3JlLCByYXRoZXIgdGhh
biBzZXR0aW5nIGp1c3QKPiA+ID4gKwkgKiAxMDB1cyBhcyB3ZSBkb24ndCBrbm93IGhvdyBsb25n
IHNob3VsZCB0aGUgZGV2aWNlIG5lZWQgdG8gcmVzZXQuCj4gPiA+ICsJICovCj4gPiA+ICsJbXNs
ZWVwKDEwMCk7Cj4gPiBBbnkgcmF0aW9uYWxlIGJlaGluZCB0aGUgdGltZSBjaG9zZW4gPwo+IFdl
IGZvdW5kIHNvbWUgZGV2aWNlIG5lZWQgYWJvdXQgMzBtcywgc28gMTAwbXMgaGVyZSBqdXN0IGxl
YXZlIG1vcmUgcm9vbSBmb3IKPiBvdGhlciBkZXZpY2VzLgoKQ2FuIHlvdSBzaGFyZSBpbmZvcm1h
dGlvbiB3aGljaCBQQ0llIGNhcmQgbmVlZHMgMzBtcz8KCkxhc3QgeWVhciBJIGRpZCB0ZXN0cyB3
aXRoIG1vcmUgV2lGaSBBQyBjYXJkcyBhbmQgInRoZSBzbG93ZXN0IiBvbmUgd2FzCkNvbXBleCBX
TEUxMjE2IHdoaWNoIG5lZWRlZCBhYm91dCAxMW1zIChtb3JlIHRoYW4gMTBtcykuIEFsbCBvdGhl
ciBjYXJkcwp3ZXJlIGhhcHB5IHdpdGgganVzdCAxLTJtcy4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
