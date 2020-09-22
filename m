Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 204D6C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 23:27:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B96AD22206
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 23:27:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TRUJ6HD/";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX2E/qqk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B96AD22206
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=N21RU9kmmBeyx/dnE0ZGH8OrNI4iTNjQTNESTygsCZI=; b=TRUJ6HD/xPwsXd6Pz3RCEenqK
	oFjKIMfgkkV6jOpGhZD+6eQFnAMj9aW+jeZo37TbeOi63lH9bTM1sujjxp7kAgX61cuurbP2+npMa
	zKKO91fq+QKXkB+OUsdqUbWXCLYzeFYlS0nKFvvnwE6hB7QikWC0aQil2iHbMO/yqkLd+30GARZ95
	2r+pepwAWOroVVphNsLVeR6rM553KQ0FAq/qsAAaSeh8AIyI5/rK1z/PnkK5GVmNi5+VlRxnfW7Cu
	s7jEhJpKubSX6JfcrOHK73yHvskWX+s6prwGP04UzdkwhQh0UbXNlmSdFIEKFmwtzhgK4cMe4lGQx
	7NuKmtFNA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKrgx-0005Pj-RB; Tue, 22 Sep 2020 23:27:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKrgt-0005OC-2C; Tue, 22 Sep 2020 23:27:19 +0000
Received: from localhost (52.sub-72-107-123.myvzw.com [72.107.123.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26C4A22206;
 Tue, 22 Sep 2020 23:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600817237;
 bh=eyyVOuMbNc1KJWbqEKXbyHjr+ZDT6KvrtdZF4IV+YD0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=UX2E/qqkeJV5RuPr5PrBorxSb4xqxjH+GncQQIylk6kNaMTYsu6+IbfACIL8K7wud
 2bGgZOh17h8fepORLcnLn8Q+XEdLcpLDZbEpPaV3phCB7TK3Ma5wEWeBv75I7fdjbP
 OIFefsO0cM42QWj9cAQJQ4EghDUmg5WOL6VomFSk=
Date: Tue, 22 Sep 2020 18:27:15 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: [PATCH] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20200922232715.GA2238688@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200905204416.GA83847@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_192719_247147_6483E0EC 
X-CRM114-Status: GOOD (  18.69  )
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
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Jonathan Chocron <jonnyc@amazon.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

WytjYyBSb2IsIHdobydzIGRvaW5nIGEgbG90IG9mIGNsZWFudXAgaW4gdGhlc2UgZHJpdmVyc10K
Ck9uIFNhdCwgU2VwIDA1LCAyMDIwIGF0IDEwOjQ0OjE2UE0gKzAyMDAsIEtyenlzenRvZiBXaWxj
ennFhHNraSB3cm90ZToKPiBIZWxsbyBKb25hdGhhbiwKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBy
ZXZpZXchICBBbHNvLCBhcG9sb2dpZXMgZm9yIGxhdGUgcmVwbHkuCj4gCj4gT24gMjAtMDgtMjgg
MTA6MDg6NDMsIEpvbmF0aGFuIENhbWVyb24gd3JvdGU6Cj4gWy4uLl0KPiA+IAo+ID4gTWlnaHQg
cG90ZW50aWFsbHkgYmUgd29ydGggdGlkeWluZyB1cCB0aGUgbWFza3MgYXMgd2VsbD8KPiA+IE9y
IHBvdGVudGlhbGx5IGRyb3AgdGhlbSBnaXZlbiBJIHN1c3BlY3QgdGhhdCB0aGVyZSBhcmUgbm8g
Y2FzZXMKPiA+IGluIHdoaWNoIHRoZSBtYXNrIGlzIGFjdHVhbGx5IGRvaW5nIGFueXRoaW5nLi4u
Cj4gCj4gSnVzdCB0byBjb25maXJtIC0geW91IGhhdmUgdGhlIGZvbGxvd2luZyBjb25zdGFudHMg
aW4gbWluZD8KPiAKPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaDoKPiAK
PiAjZGVmaW5lIFBDSUVfRUNBTV9CVVMoeCkJKCgoeCkgJiAweGZmKSA8PCAyMCkKPiAjZGVmaW5l
IFBDSUVfRUNBTV9ERVYoeCkJKCgoeCkgJiAweDFmKSA8PCAxNSkKPiAjZGVmaW5lIFBDSUVfRUNB
TV9GVU5DKHgpCSgoKHgpICYgMHg3KSA8PCAxMikKPiAKPiBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWFsLmM6Cj4gCj4gI2RlZmluZSBQQ0lFX0VDQU1fREVWRk4oeCkJKCgoeCkgJiAw
eGZmKSA8PCAxMikKPiAKPiBJIGNhbiBtb3ZlIFBDSUVfRUNBTV9CVVMsIFBDSUVfRUNBTV9ERVYg
YW5kIFBDSUVfRUNBTV9GVU5DIChhcwo+IFBDSUVfRUNBTV9GVU4pIHRvIHRoZSBsaW51eC9wY2kt
ZWNhbS5oIGZpbGUsIGFzIHRoZXNlIHNlZW0gdXNlZnVsLCBidXQKPiB3aXRob3V0IHRoZSBtYXNr
cywgYW5kIHRoZW4gdXBkYXRlIG90aGVyIGZpbGVzIHRvIHVzZSB0aGVzZS4gIFdlIGNvdWxkCj4g
dGhlbiBsZXZlcmFnZSB0aGVzZSwgZm9yIGV4YW1wbGU6Cj4gCj4gIAlwY2lfYmFzZV9hZGRyID0g
KHZvaWQgX19pb21lbSAqKSgodWludHB0cl90KXBwLT52YV9jZmcwX2Jhc2UgKwo+IC0JCQkJCSAo
YnVzbnJfZWNhbSA8PCAyMCkgKwo+IC0JCQkJCSBQQ0lFX0VDQU1fREVWRk4oZGV2Zm4pKTsKPiAr
CQkJCQkgUENJRV9FQ0FNX0JVUyhidXNucl9lY2FtKSArCj4gKwkJCQkJIFBDSUVfRUNBTV9GVU4o
ZGV2Zm4pKTsKPiAKPiBXaGF0IGRvIHlvdSB0aGluaz8gIEJqb3JuLCB3b3VsZCB0aGF0IGJlIGFj
Y2VwdGFibGU/CgpJdCB3b3VsZCBiZSBuaWNlIHRvIHVzZSB0aGUgc2FtZSBzdHlsZSBhbmQgc2Ft
ZSBtYWNyb3MgZm9yIGFsbCBvZgp0aGUgZm9sbG93aW5nLCB3aGljaCBhcmUgYWxsIHJlYWxseSBk
b2luZyB0aGUgc2FtZSB0aGluZzoKCiAgYWxfcGNpZV9jb25mX2FkZHJfbWFwKCkKICAgIHBjaV9i
YXNlX2FkZHIgPSAodm9pZCBfX2lvbWVtICopKCh1aW50cHRyX3QpcHAtPnZhX2NmZzBfYmFzZSAr
CgkJCQkgICAgIChidXNucl9lY2FtIDw8IDIwKSArCgkJCQkgICAgIFBDSUVfRUNBTV9ERVZGTihk
ZXZmbikpOwoKICByb2NrY2hpcF9wY2llX3JkX290aGVyX2NvbmYoKQogICAgYnVzZGV2ID0gUENJ
RV9FQ0FNX0FERFIoYnVzLT5udW1iZXIsIFBDSV9TTE9UKGRldmZuKSwKCQkJICAgIFBDSV9GVU5D
KGRldmZuKSwgd2hlcmUpOwoKICBud2xfcGNpZV9tYXBfYnVzKCkKICAgIHJlbGJ1cyA9IChidXMt
Pm51bWJlciA8PCBFQ0FNX0JVU19MT0NfU0hJRlQpIHwKCQkgICAgKGRldmZuIDw8IEVDQU1fREVW
X0xPQ19TSElGVCk7CgogICAgcmV0dXJuIHBjaWUtPmVjYW1fYmFzZSArIHJlbGJ1cyArIHdoZXJl
OwoKICB4aWxpbnhfcGNpZV9tYXBfYnVzKCkKICAgIHJlbGJ1cyA9IChidXMtPm51bWJlciA8PCBF
Q0FNX0JVU19OVU1fU0hJRlQpIHwKCSAgICAgKGRldmZuIDw8IEVDQU1fREVWX05VTV9TSElGVCk7
CgogICAgcmV0dXJuIHBvcnQtPnJlZ19iYXNlICsgcmVsYnVzICsgd2hlcmU7CgpNYXliZSB0aGF0
J3Mgc29tZXRoaW5nIGxpa2UgdXNpbmcgUENJRV9FQ0FNX0FERFIoKSBldmVyeXdoZXJlPyAgSSdt
Cm5vdCBzdXJlIHRoZXJlJ3MgdmFsdWUgaW4gaGF2aW5nIHRoZSBjYWxsZXIgZG8gdGhlIFBDSV9T
TE9UKCkgYW5kClBDSV9GVU5DKCkgZGVjb21wb3NpdGlvbiwgdGhvdWdoLCBpLmUuLCBtYXliZSBp
dCdzIHNvbWV0aGluZyBsaWtlCnRoaXM/CgogICNkZWZpbmUgUENJRV9FQ0FNX1JFRyh4KSAgKCh4
KSAmIDB4ZmZmKQoKICAjZGVmaW5lIFBDSV9FQ0FNX09GRlNFVChidXMsIGRldmZuLCB3aGVyZSkg
XAogICAgUENJRV9FQ0FNX0JVUyhidXMtPm51bWJlcikgfCBcCiAgICBQQ0lFX0VDQU1fREVWRk4o
ZGV2Zm4pIHwgXAogICAgUENJRV9FQ0FNX1JFRyh3aGVyZSkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
