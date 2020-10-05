Return-Path: <SRS0=gs2I=DM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D013C4363C
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 02:53:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1FE362072D
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 02:53:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Owbbvzs8";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="psYh+c5O"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1FE362072D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yv58ZJwqy8P2rVAajgyatD94CaTof8TLOfiYtYKVD3s=; b=Owbbvzs8lq2jtc4leQ5NvARdU
	UigWJV2WlaSEAKbRa0xovl8ZSZsz0WPh4f/Ze0X5yVmYMlLgDS2ZdBtbM0Fj2S4Zy5JkVbU65++gt
	TELEHYOv0xu/3BEcK8ncCWkYIf/8XtKE2l8hR1usXorssbtKIIna+FjSX0rM1lwxjBDXepcAuvHaz
	709ehvG1X/6Gyqv7j0XqcywARq/zf3liW6GVefC1s78gIXpvpIma9xbDh5TvMIdlIhUoCxqpHdMl0
	4r4W5x5PNCZoqjvGmQm7NzfE1/M5uehnfVPUYUgzP3gi4PXMjvN70RwXvIfbzqdD1tL+D2nnvKdUP
	QAGTPOrcA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPGcl-0000yk-GJ; Mon, 05 Oct 2020 02:53:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPGci-0000yB-CH; Mon, 05 Oct 2020 02:53:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id x16so5057383pgj.3;
 Sun, 04 Oct 2020 19:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HHMTKnBxL0N7bXcNK+GerHSHtiDck53Y2/0CunSw/j4=;
 b=psYh+c5OvwhMBJLg5EuPKeRmIBKGCwEgwqb40xvWojEXm8dpRAY47wVW+8BouFoi9b
 yTQToj8e3jTE5/68dGYGhvS5Ac7dIh6DlK/Qbo5z+SbfqYepDej8ua1vGsq9xVt5nXBp
 vaEqZZ/P2Lsj3Zb/7uxjTsGCn0wIR+n6kwjcYQ82RTmVTIOoDxaN8EzFwDMD5qaFWSVt
 jrsagswwg6WaIk7fS+GHbGEGpCMbOoxtm2yfwmSI4mU77YJwpMfJ+L85nIbuSWfzGWdR
 vzXwWwDLa/0xSfPswGgxi0VtwSJfeReA6V5szkE0CZgyA9CLOtby8HGN+p4Vn9UT55AP
 ZKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HHMTKnBxL0N7bXcNK+GerHSHtiDck53Y2/0CunSw/j4=;
 b=CtG22cl2cMeEqWBfC7Atiaj3AJTgVlYCja1WCOWRZn9nSsHXoiGEK3PWqiH/enf5xV
 uFMzyktNJxKuKCkGG4F11/ySxrc5snCpWqvroXBdbsudgqY8D+flOxpzh/na78qA7MLx
 CzoUr/SNHSXQK1N7EVmhoXpib+KT1Mm61B2HzLrcS9kAepoTLiwKoABIMpTAc5mxcg/h
 RTXmcwRoO+G94iO11OE8vCkWDX+TjKO8xUIOXWbTM1jgwL3mOLh4Df1awYgyJGHUBDZy
 sLw1IaWwy11VNbo9zzKDdoaBPTfOuZ6uTGFvkxj1il4JBB37KYEhwkDnCwSGrxzEhpKU
 ze2A==
X-Gm-Message-State: AOAM531UoB+UvESx5eSb8ewp0ATZG2RfIuRykt064JiZ8QWeEwXKqwVE
 er1njyBYnrTyjHKtH1rxzO4=
X-Google-Smtp-Source: ABdhPJw3dGTnpgAGQ4msGFDJmgnKlpAKJK8vgVUn8Vr7RE+6KO5inwYtl/zAiU1GYZUbGZnYjoCD6A==
X-Received: by 2002:a63:4457:: with SMTP id t23mr12196361pgk.108.1601866389332; 
 Sun, 04 Oct 2020 19:53:09 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 j1sm4317047pfj.202.2020.10.04.19.53.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 04 Oct 2020 19:53:08 -0700 (PDT)
To: =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>
References: <20201005003805.465057-1-kw@linux.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v4] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <429099a8-5186-40c3-f5c0-f219b3e79f01@gmail.com>
Date: Sun, 4 Oct 2020 19:53:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201005003805.465057-1-kw@linux.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201004_225312_438197_05E3A715 
X-CRM114-Status: GOOD (  23.46  )
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
 Ray Jui <rjui@broadcom.com>, linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 linuxppc-dev@lists.ozlabs.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAxMC80LzIwMjAgNTozOCBQTSwgS3J6eXN6dG9mIFdpbGN6ecWEc2tpIHdyb3RlOgo+IFVu
aWZ5IEVDQU0tcmVsYXRlZCBjb25zdGFudHMgaW50byBhIHNpbmdsZSBzZXQgb2Ygc3RhbmRhcmQg
Y29uc3RhbnRzCj4gZGVmaW5pbmcgbWVtb3J5IGFkZHJlc3Mgc2hpZnQgdmFsdWVzIGZvciB0aGUg
Ynl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQgY2FuCj4gYmUgdXNlZCB3aGVuIGFjY2Vzc2luZyB0aGUg
UENJIEV4cHJlc3MgQ29uZmlndXJhdGlvbiBTcGFjZSwgYW5kIHRoZW4KPiBtb3ZlIG5hdGl2ZSBQ
Q0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMgdG8gdXNlIG5ld2x5IGludHJvZHVjZWQKPiBk
ZWZpbml0aW9ucyByZXRpcmluZyBhbnkgZHJpdmVyLXNwZWNpZmljIG9uZXMuCj4gCj4gVGhlIEVD
QU0gKCJFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFjY2VzcyBNZWNoYW5pc20iKSBpcyBkZWZpbmVk
IGJ5IHRoZQo+IFBDSSBFeHByZXNzIHNwZWNpZmljYXRpb24gKHNlZSBQQ0kgRXhwcmVzcyBCYXNl
IFNwZWNpZmljYXRpb24sIFJldmlzaW9uCj4gNS4wLCBWZXJzaW9uIDEuMCwgU2VjdGlvbiA3LjIu
MiwgcC4gNjc2KSwgdGh1cyBtb3N0IGhhcmR3YXJlIHNob3VsZAo+IGltcGxlbWVudCBpdCB0aGUg
c2FtZSB3YXkuICBNb3N0IG9mIHRoZSBuYXRpdmUgUENJIEV4cHJlc3MgY29udHJvbGxlcgo+IGRy
aXZlcnMgZGVmaW5lIHRoZWlyIEVDQU0tcmVsYXRlZCBjb25zdGFudHMsIG1hbnkgb2YgdGhlc2Ug
Y291bGQgYmUKPiBzaGFyZWQsIG9yIHVzZSBvcGVuLWNvZGVkIHZhbHVlcyB3aGVuIHNldHRpbmcg
dGhlIC5idXNfc2hpZnQgZmllbGQgb2YKPiB0aGUgc3RydWN0IHBjaV9lY2FtX29wcy4KPiAKPiBB
bGwgb2YgdGhlIG5ld2x5IGFkZGVkIGNvbnN0YW50cyBzaG91bGQgcmVtb3ZlIGFtYmlndWl0eSBh
bmQgcmVkdWNlIHRoZQo+IG51bWJlciBvZiBvcGVuLWNvZGVkIHZhbHVlcywgYW5kIGFsc28gY29y
cmVsYXRlIG1vcmUgc3Ryb25nbHkgd2l0aCB0aGUKPiBkZXNjcmlwdGlvbnMgaW4gdGhlIGFmb3Jl
bWVudGlvbmVkIHNwZWNpZmljYXRpb24gKHNlZSBUYWJsZSA3LTEKPiAiRW5oYW5jZWQgQ29uZmln
dXJhdGlvbiBBZGRyZXNzIE1hcHBpbmciLCBwLiA2NzcpLgo+IAo+IFRoZXJlIGlzIG5vIGNoYW5n
ZSB0byBmdW5jdGlvbmFsaXR5Lgo+IAo+IFN1Z2dlc3RlZC1ieTogQmpvcm4gSGVsZ2FhcyA8Ymhl
bGdhYXNAZ29vZ2xlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgV2lsY3p5xYRza2kg
PGt3QGxpbnV4LmNvbT4KPiAtLS0KCltzbmlwXQoKPiAgIAo+IC0vKiBDb25maWd1cmF0aW9uIHNw
YWNlIHJlYWQvd3JpdGUgc3VwcG9ydCAqLwo+IC1zdGF0aWMgaW5saW5lIGludCBicmNtX3BjaWVf
Y2ZnX2luZGV4KGludCBidXNuciwgaW50IGRldmZuLCBpbnQgcmVnKQo+IC17Cj4gLQlyZXR1cm4g
KChQQ0lfU0xPVChkZXZmbikgJiAweDFmKSA8PCBQQ0lFX0VYVF9TTE9UX1NISUZUKQo+IC0JCXwg
KChQQ0lfRlVOQyhkZXZmbikgJiAweDA3KSA8PCBQQ0lFX0VYVF9GVU5DX1NISUZUKQo+IC0JCXwg
KGJ1c25yIDw8IFBDSUVfRVhUX0JVU05VTV9TSElGVCkKPiAtCQl8IChyZWcgJiB+Myk7Cj4gLX0K
PiAtCj4gICBzdGF0aWMgdm9pZCBfX2lvbWVtICpicmNtX3BjaWVfbWFwX2NvbmYoc3RydWN0IHBj
aV9idXMgKmJ1cywgdW5zaWduZWQgaW50IGRldmZuLAo+ICAgCQkJCQlpbnQgd2hlcmUpCj4gICB7
Cj4gQEAgLTU5MCw3ICs1NzgsNyBAQCBzdGF0aWMgdm9pZCBfX2lvbWVtICpicmNtX3BjaWVfbWFw
X2NvbmYoc3RydWN0IHBjaV9idXMgKmJ1cywgdW5zaWduZWQgaW50IGRldmZuLAo+ICAgCQlyZXR1
cm4gUENJX1NMT1QoZGV2Zm4pID8gTlVMTCA6IGJhc2UgKyB3aGVyZTsKPiAgIAo+ICAgCS8qIEZv
ciBkZXZpY2VzLCB3cml0ZSB0byB0aGUgY29uZmlnIHNwYWNlIGluZGV4IHJlZ2lzdGVyICovCj4g
LQlpZHggPSBicmNtX3BjaWVfY2ZnX2luZGV4KGJ1cy0+bnVtYmVyLCBkZXZmbiwgMCk7Cj4gKwlp
ZHggPSBQQ0lFX0VDQU1fQlVTKGJ1cy0+bnVtYmVyKSB8IFBDSUVfRUNBTV9ERVZGTihkZXZmbik7
CgpUaGlzIGFwcGVhcnMgdG8gYmUgY29ycmVjdCwgc286CgpBY2tlZC1ieTogRmxvcmlhbiBGYWlu
ZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Cgpob3dldmVyLCBJIHdvdWxkIGhhdmUgZGVmaW5l
ZCBhIGNvdXBsZSBvZiBhZGRpdGlvbmFsIGhlbHBlciBtYWNyb3MgYW5kIGRvOgoKCWlkeCA9IFBD
SUVfRUNBTV9CVVMoYnVzLT5udW1iZXIpIHwgUENJRV9FQ0FNX0RFVihkZXZmbikgfCAKUENJRV9F
Q0FNX0ZVTihkZXZmbik7Cgpmb3IgY2xhcml0eS4KCltzbmlwXQoKPiArLyoKPiArICogTWVtb3J5
IGFkZHJlc3Mgc2hpZnQgdmFsdWVzIGZvciB0aGUgYnl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQKPiAr
ICogY2FuIGJlIHVzZWQgd2hlbiBhY2Nlc3NpbmcgdGhlIFBDSSBFeHByZXNzIENvbmZpZ3VyYXRp
b24gU3BhY2UuCj4gKyAqLwo+ICsKPiArLyoKPiArICogRW5oYW5jZWQgQ29uZmlndXJhdGlvbiBB
Y2Nlc3MgTWVjaGFuaXNtIChFQ0FNKQo+ICsgKgo+ICsgKiBTZWUgUENJIEV4cHJlc3MgQmFzZSBT
cGVjaWZpY2F0aW9uLCBSZXZpc2lvbiA1LjAsIFZlcnNpb24gMS4wLAo+ICsgKiBTZWN0aW9uIDcu
Mi4yLCBUYWJsZSA3LTEsIHAuIDY3Ny4KPiArICovCj4gKyNkZWZpbmUgUENJRV9FQ0FNX0JVU19T
SElGVAkyMCAvKiBCdXMgTnVtYmVyICovCj4gKyNkZWZpbmUgUENJRV9FQ0FNX0RFVl9TSElGVAkx
NSAvKiBEZXZpY2UgTnVtYmVyICovCj4gKyNkZWZpbmUgUENJRV9FQ0FNX0ZVTl9TSElGVAkxMiAv
KiBGdW5jdGlvbiBOdW1iZXIgKi8KPiArCj4gKyNkZWZpbmUgUENJRV9FQ0FNX0JVUyh4KQkoKCh4
KSAmIDB4ZmYpIDw8IFBDSUVfRUNBTV9CVVNfU0hJRlQpCj4gKyNkZWZpbmUgUENJRV9FQ0FNX0RF
VkZOKHgpCSgoKHgpICYgMHhmZikgPDwgUENJRV9FQ0FNX0ZVTl9TSElGVCkKCkZvciBpbnN0YW5j
ZSwgYWRkaW5nIHRoZXNlIHR3bzoKCiNkZWZpbmUgUENJRV9FQ0FNX0RFVih4KQkJKCgoeCkgJiAw
eDFmKSA8PCBQQ0lFX0VDQU1fREVWX1NISUZUKQojZGVmaW5lIFBDSUVfRUNBTV9GVU4oeCkJCSgo
KHgpICYgMHg3KSA8PCBQQ0lFX0VDQU1fRlVOX1NISUZUKQoKbWF5IGJlIGNsZWFyZXIgZm9yIHVz
ZSBpbiBkcml2ZXJzIGxpa2UgcGNpZS1icmNtc3RiLmMgdGhhdCB1c2VkIHRvIHRyZWF0IAp0aGUg
ZGV2aWNlIGZ1bmN0aW9uIGluIHRlcm1zIG9mIGRldmljZSBhbmQgZnVuY3Rpb24gKHRob3VnaCBp
dCB3YXMgCmNhbGxlZCBzbG90IHRoZXJlKS4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
