Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 991C4CF885E
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 13:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzDV7JtUfUYpDcRMGhpFiwGz59cms2SK1vJNonddtnM=; b=0Kwln6tUn68+mU
	mll9pavsrShzGPwb0ulNGIbkvVV4LkWamfAOdazQLtAcbu2jnyUTa+2yBfacavc3olmUuUQ7wlTWo
	J2WTzQjLSZY1GCLyjiX+pLVBDyz2xIyzAl/FsjJW5j6o/5isruKU0v/H8MFMQ1SjGeyesmUgTZ3fp
	Ms0h9TGsPg0qZE8aC0lpIi5LwmtsikLnU0OUJfqCr85QoTretthmDhKvwWllCOJQmr8wltzkVrmkT
	0xtDDYzX5IOHSY6brLkUfXTVcohsq7YT7FAoF9C7QhuykPerDiBCAyAyAAI+/ju/hy4yg1Xc8gwOH
	pT9k5ra8DMHkrA+RYTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM5BG-00000006mUu-0wLH;
	Thu, 20 Nov 2025 13:58:38 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM5BD-00000006mTq-0p6T
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Nov 2025 13:58:37 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-640aa1445c3so1375703a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Nov 2025 05:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763647113; x=1764251913; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DG3ChDDmMT3YrDzxPPea5PzvCSNp1XdHPGl33REZrIc=;
        b=EB0TE1Z6+zn/rPocwWKLvFFXnWDfnOOtCVmfLq98cWiB3MsSbRUbrQ+jfWbN00+gEL
         1U79UF+k2QCs4RzK/iS2kDLmgW3uaICoSdwGPwji7WJmjbR+oDBDwOqzb77rCJBzx5aT
         otuCC3WL1edIq3UmCUgHeKIzpx1+X5jw2rCx7G+RxPuU9jqDu/IJDwUaTX3lgIzlMJ1t
         7QQ37LIPgpt6GeuQhfoh9ySxDDHbO3rv6K9Qp2IeKSAPqDDhJxGPrz/5Ej+NVuqRvsc+
         D19r8NEWUdm4cYUk591lvUOpnbMVn1Md40Ljidd9GyHALAOKoxFPgPL//60eidWaPI+I
         UwSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763647113; x=1764251913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DG3ChDDmMT3YrDzxPPea5PzvCSNp1XdHPGl33REZrIc=;
        b=HC7q6egrv/vvDkRYW/YNVrokCGJ+yOgBBm8K+LAOQH7WyqOr/DPxgqd+nKljgsit1Q
         1vgR6a84+CZUpQ8TTioLxxGxS6NnG5rR6TPW0K7pHCb4y8Fz/Gh5wNNAbEW+f1/B5TZi
         H68Nvdyh/ZI81dCziQ2Av6IyrK79ijRmZLvRna+WiJQ7NTrdXxQisOwqsTUVt7OPBQdU
         HelCR2+S2dJcnyI6Cf7zgVpYQMkVXU6IAQHq2CicYYf2YLwQF+rhsdPp/4le/IEnBzmL
         6seL8dpwkVRjWjzC+0yDjxdIflEN70BfvrwkV/hp9DslEXAzAjF/1BhT06s47cN9TO1B
         1lNg==
X-Forwarded-Encrypted: i=1; AJvYcCVN+Afqdx6O0E8GNc1NPskc//K72fWRVyh67bN3rp88MHo5TeM7zbV8YuJ7I4tygp7jysttHXtn3m5I/kBnjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnN9hZwSLXHHecrhJVeWETV7+vglFnd0KQBw1zQkgAykDvxope
	Lo6JIEh0VJgDd4GbcVoJHAOKpEaOuk5mHzq2NeOVIk0a+7PwrLmmr+keKwcnMjz/4bkN94J9OHX
	2nSGvncg9C/3icLHVAij1KLO0RysSsoo=
X-Gm-Gg: ASbGncs6s1ZUwKTAiYpwZdbwq/gvRCPPddAiEUU7shCkyib8UVpClfIe5NVgQgfg1pc
	cWFVnVXSdoKYUalzRFAb/4+kqnXe+drjF8wWhE2B0DW6jOW7FceD0A+sW1AtlC6og+A5m8Bi0M9
	+qNQBRX+DKMtATc7A0ITn7CyiEBPAf3pvR463newQER2KumHSDsWuDui11yElpMAZr2VAV08NY/
	7efkLdwahV21cts4t70xW1TUss2hsNjyjems1ckcsJnaGw0t+shM8kTu6BhwqTCmRJX8A==
X-Google-Smtp-Source: AGHT+IEVLfIBF85HV4ZlfgN4D/4VOtQPabMhTdTM/DaKaBk2/tnTiKXzg1B0RQb5cwyWvIZ3LTgBAP+D+hBXUmc9U8o=
X-Received: by 2002:a17:907:9447:b0:b40:8deb:9cbe with SMTP id
 a640c23a62f3a-b7654cf3b82mr376884266b.2.1763647112743; Thu, 20 Nov 2025
 05:58:32 -0800 (PST)
MIME-Version: 1.0
References: <CANAwSgRHuwoQjr95sXp-X97=L-X3vqUPxjR5=2jNtFZA+4gnwQ@mail.gmail.com>
 <20251120034437.GA2625966@bhelgaas>
In-Reply-To: <20251120034437.GA2625966@bhelgaas>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 20 Nov 2025 19:28:14 +0530
X-Gm-Features: AWmQ_bnrXbdS4d1Wa8FR5sCLFCXhpJ7ae-_eHD85CbC5H6jhwpeTAoWyfYR2uDo
Message-ID: <CANAwSgStRZW322X3H_B4wK5CthFube_4MBUBw=U1BRjyRGeu9g@mail.gmail.com>
Subject: Re: [RFC v1 1/5] PCI: rockchip: Fix Link Control register offset and
 enable ASPM/CLKREQ
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_055835_286339_4902633F 
X-CRM114-Status: GOOD (  26.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

SGkgQmpvcm4sCgpUaGFua3MgZm9yIHlvdXIgaW5wdXQuCgpPbiBUaHUsIDIwIE5vdiAyMDI1IGF0
IDA5OjE0LCBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24g
V2VkLCBOb3YgMTksIDIwMjUgYXQgMDc6NDk6MDZQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90ZToK
PiA+IE9uIFR1ZSwgMTggTm92IDIwMjUgYXQgMjM6MjAsIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIE1vbiwgTm92IDE3LCAyMDI1IGF0IDExOjQwOjA5
UE0gKzA1MzAsIEFuYW5kIE1vb24gd3JvdGU6Cj4gPiA+ID4gQXMgcGVyIHRoZSBSSzMzOTkgVFJN
IChQYXJ0IDIsIDE3LjYuNi4xLjMxKSwgdGhlIExpbmsgQ29udHJvbCByZWdpc3Rlcgo+ID4gPiA+
IChSQ19DT05GSUdfTEMpIHJlc2lkZXMgYXQgYW4gb2Zmc2V0IG9mIDB4ZDAgd2l0aGluIHRoZSBS
b290IENvbXBsZXggKFJDKQo+ID4gPiA+IGNvbmZpZ3VyYXRpb24gc3BhY2UsIG5vdCBhdCB0aGUg
b2Zmc2V0IG9mIHRoZSBQQ0kgRXhwcmVzcyBDYXBhYmlsaXR5IExpc3QKPiA+ID4gPiAoMHhjMCku
IEZvbGxvd2luZyBjaGFuZ2VzIGNvcnJlY3QgdGhlIHJlZ2lzdGVyIG9mZnNldCB0byB1c2UKPiA+
ID4gPiBQQ0lFX1JDX0NPTkZJR19MQyAoMHhkMCkgdG8gY29uZmlndXJlIGxpbmsgY29udHJvbC4K
PiA+IC4uLgo+Cj4gPiA+IERvbid0IGRvIHR3byB0aGluZ3MgYXQgb25jZSBpbiB0aGUgc2FtZSBw
YXRjaC4gIEZpeCB0aGUgcmVnaXN0ZXIKPiA+ID4gb2Zmc2V0IGluIG9uZSBwYXRjaC4gIEFjdHVh
bGx5LCBhcyBJIG1lbnRpb25lZCBhdCBbMV0sIHRoZXJlJ3MgYSBsb3QKPiA+ID4gb2YgZml4aW5n
IHRvIGRvIHRoZXJlLCBhbmQgSSdtIG5vdCBldmVuIGdvaW5nIHRvIGNvbnNpZGVyIG90aGVyCj4g
PiA+IGNoYW5nZXMgdW50aWwgdGhlICNkZWZpbmUgbWVzcyBpcyBjbGVhbmVkIHVwLgo+Cj4gPiA+
IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMTE4MDA1MDU2LkdBMjU0MTc5NkBi
aGVsZ2Fhcwo+ID4KPiA+IEFjY29yZGluZyB0byB0aGUgUkszMzk5IFRlY2huaWNhbCBSZWZlcmVu
Y2UgTWFudWFsIChUUk0pLCBhbmQgcGNpX3JlZ3MuaAo+ID4gYWxyZWFkeSBpbmNsdWRlcyB0aGUg
Y29ycmVjdCwgcHJlLWRlZmluZWQgb2Zmc2V0cyBmb3IgYWxsIFBDSSBFeHByZXNzCj4gPiBkZXZp
Y2UgdHlwZXMKPiA+IGFuZCB0aGVpciBjYXBhYmlsaXRpZXMgcmVnaXN0ZXJzLiBUbyBhdm9pZCBv
dmVybGFwcGluZyByZWdpc3RlciBtYXBwaW5ncywKPiA+IHdlIHNob3VsZCBleHBsaWNpdGx5IHJl
bW92ZSB0aGUgYWRkaXRpb24gb2YgbWFudWFsIG9mZnNldHMgd2l0aGluIHRoZSBjb2RlLgo+Cj4g
PiBIZXJlIGlzIHRoZSBleGFtcGxlLiBJcyB0aGlzIHRoZSBjb3JyZWN0IGFwcHJvYWNoPwo+Cj4g
PiAtICAgICAgIHN0YXR1cyA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9SQ19D
T05GSUdfQ1IgKwo+ID4gUENJX0VYUF9MTktDVEwpOwo+ID4gKyAgICAgICBzdGF0dXMgPSByb2Nr
Y2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBDSUVfUkNfQ09ORklHX0xDKTsKPiA+ICAgICAgICAg
c3RhdHVzIHw9IChQQ0lfRVhQX0xOS0NUTF9MQk1JRSB8IFBDSV9FWFBfTE5LQ1RMX0xBQklFKTsK
PiA+IC0gICAgICAgcm9ja2NoaXBfcGNpZV93cml0ZShyb2NrY2hpcCwgc3RhdHVzLCBQQ0lFX1JD
X0NPTkZJR19DUiArCj4gPiBQQ0lfRVhQX0xOS0NUTCk7Cj4gPiArICAgICAgIHJvY2tjaGlwX3Bj
aWVfd3JpdGUocm9ja2NoaXAsIHN0YXR1cywgUENJRV9SQ19DT05GSUdfTEMpOwo+Cj4gTm8uICBU
aGUgY2FsbCBzaG91bGQgaW5jbHVkZSBQQ0lfRVhQX0xOS0NUTCBiZWNhdXNlIHRoYXQncyB3aGF0
IHdlCj4gZ3JlcCBmb3Igd2hlbiB3ZSB3YW50IHRvIHNlZSB3aGVyZSBMaW5rIENvbnRyb2wgaXMg
dXBkYXRlZC4KPgo+IFNlZSBteSBleGFtcGxlIGZyb20gWzFdIGFib3ZlOgo+Cj4gICByb2NrY2hp
cF9wY2llX3JlYWQocm9ja2NoaXAsIFJPQ0tDSElQX1JQX1BDSUVfQ0FQICsgUENJX0VYUF9ERVZD
QVApCj4gICByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFJPQ0tDSElQX1JQX1BDSUVfQ0FQ
ICsgUENJX0VYUF9MTktDVEwpCj4KPiBZb3Ugc2hvdWxkIGhhdmUgYSBzaW5nbGUgI2RlZmluZSBm
b3IgdGhlIG9mZnNldCBvZiB0aGUgUENJZQo+IENhcGFiaWxpdHksIGUuZy4sIFJPQ0tDSElQX1JQ
X1BDSUVfQ0FQLiAgRXZlcnkgYWNjZXNzIHRvIHJlZ2lzdGVycyBpbgo+IHRoYXQgY2FwYWJpbGl0
eSB3b3VsZCB1c2UgUk9DS0NISVBfUlBfUENJRV9DQVAgYW5kIHRoZSByZWxldmFudAo+IFBDSV9F
WFBfKiBvZmZzZXQsIGUuZy4sIFBDSV9FWFBfREVWQ0FQLCBQQ0lfRVhQX0RFVkNUTCwKPiBQQ0lf
RVhQX0RFVlNUQSwgUENJX0VYUF9MTktDQVAsIFBDSV9FWFBfTE5LQ1RMLCBQQ0lfRVhQX0xOS1NU
QSwgZXRjLgo+CkkgYXBvbG9naXplIGZvciBub3QgZnVsbHkgdW5kZXJzdGFuZGluZyB0aGUgaXNz
dWUgZWFybGllci4gSSBkaWQgbm90CmNhcmVmdWxseSByZXZpZXcgeW91ciBlbWFpbCwKIHdoaWNo
IGNhdXNlZCBtZSB0byBvdmVybG9vayB0aGUgcmVxdWlyZWQgY2hhbmdlcy4KClNvLCBhcyBwZXIg
dGhlIFRSTQoKMTcuNi40LjUuMSBQQ0kgRXhwcmVzcyBDYXBhYmlsaXR5IExpc3QgUmVnaXN0ZXIK
UHJvcG5hbWXvvJpQQ0kgRXhwcmVzcyBDYXBhYmlsaXR5IExpc3QgUmVnaXN0ZXIKQWRkcmVzc++8
mkAweGMwCgojZGVmaW5lIFBDSUVfRVBfQ09ORklHX0RJRF9WSUQgICAgICAgICAgKFBDSUVfRVBf
Q09ORklHX0JBU0UgKyAweDAwKQojZGVmaW5lIFBDSUVfRVBfQ09ORklHX0xDUyAgICAgICAgICAg
ICAgKFBDSUVfRVBfQ09ORklHX0JBU0UgKyAweGQwKQojZGVmaW5lIFBDSUVfUkNfQ09ORklHX1JJ
RF9DQ1IgICAgICAgICAgKFBDSUVfUkNfQ09ORklHX0JBU0UgKyAweDA4KQojZGVmaW5lIFBDSUVf
UkNfQ09ORklHX0NSICAgICAgICAgICAgICAgKFBDSUVfUkNfQ09ORklHX0JBU0UgKyAweGMwKQoj
ZGVmaW5lIFJPQ0tDSElQX1JQX1BDSUVfQ0FQICAgICAgICAgICAgKFBDSUVfUkNfQ09ORklHX0JB
U0UgKyAweGMwKQovKiBMaW5rIENvbnRyb2wgYW5kIFN0YXR1cyBSZWdpc3RlciAqLwojZGVmaW5l
IFBDSUVfUkNfQ09ORklHX0xDICAgICAgICAgICAgICAgKFJPQ0tDSElQX1JQX1BDSUVfQ0FQICsg
MHhkMCkKLyogRGV2aWNlIENvbnRyb2wgKi8KI2RlZmluZSBQQ0lFX1JDX0NPTkZJR19EQyAgICAg
ICAgICAgICAgIChST0NLQ0hJUF9SUF9QQ0lFX0NBUCArIDB4YzgpCi8qIFNsb3QgQ2FwYWJpbGl0
eSBSZWdpc3RlciAqLwojZGVmaW5lIFBDSUVfUkNfQ09ORklHX1NDICAgICAgICAgICAgICAgKFJP
Q0tDSElQX1JQX1BDSUVfQ0FQICsgMHhkNCkKLyogTGluayBDb250cm9sIDIgUmVnaXN0ZXIgKi8K
I2RlZmluZSBQQ0lFX1JDX0NPTkZJR19MQzIgICAgICAgICAgICAgIChST0NLQ0hJUF9SUF9QQ0lF
X0NBUCArIDB4ZjApCi8qIExpbmt3aWR0aCBDb250cm9sIFJlZ2lzdGVyICovCiNkZWZpbmUgUENJ
RV9SQ19DT05GSUdfTFdDICAgICAgICAgICAgICAoUk9DS0NISVBfUlBfUENJRV9DQVAgKyAweDUw
KQoKQW5kIHRoZW4gdXNlIHRoZXNlIGxpa2UgdGhpcy4KCnN0YXR1cyA9IHJvY2tjaGlwX3BjaWVf
cmVhZChyb2NrY2hpcCwgUENJRV9SQ19DT05GSUdfTEMgKyBQQ0lfRVhQX0xOS0NUTCk7CnN0YXR1
cyA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9SQ19DT05GSUdfREMgKyBQQ0lf
RVhQX0RFVkNUTCk7CnN0YXR1cyA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJRV9S
Q19DT05GSUdfU0MgKyBQQ0lfRVhQX0RFVkNBUCk7CnN0YXR1cyA9IHJvY2tjaGlwX3BjaWVfcmVh
ZChyb2NrY2hpcCwgUENJRV9SQ19DT05GSUdfTEMyICsgUENJX0VYUF9MTktDVEwyKTsKc3RhdHVz
ID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX1JDX0NPTkZJR19MV0MgKyBQQ0lf
RVhQX0xOS0NUTCk7CgpJZiB5b3UgYWdyZWUgdGhhdCB0aGlzIGFwcHJvYWNoIGNvcnJlY3RseSBy
ZXNvbHZlcyB0aGUgaXNzdWUsCkkgd291bGQgcHJlZmVyIHRvIGNvbmZpcm0gbm93IHRvIHByZXZl
bnQgZnVydGhlciBpdGVyYXRpdmUgY2hhbmdlcwp0aGF0IG1pZ2h0IGNvbmZ1c2UuCgo+IEJqb3Ju
CgpUaGFua3MKLUFuYW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
