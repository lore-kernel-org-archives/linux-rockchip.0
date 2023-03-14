Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 723C7C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 08:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtMSoVm65isLvv3VbsSkV5gj8XRzDX+Jn7i5Wzz3I/A=; b=lWr3+eL3ES0SNh
	RukEM6um5pB5p2eALvUox53hQpfz4TSJjQwhyzdXqAOGZlT+nDQ0N6/09JUtHszlv2IavYF3WuMsg
	Z5Ns+sw4KMlIFayzA+3twvZ65c9DMKrg5MNfKiaLtzqfT/KGeJVkw/g7YN8l6urCYyPyF8vSJ+biZ
	ZePkMkwl7zFPYsD6mRLd+aizJ2JzecX58uYJu6b3c5WfmT3n8I0cyHP91KzL6MsK0ZcParE0K3NlV
	cPDmZPQJ6eZmckDRDL6r1N+c4/RSaCK4Eu3kodiUx3F7Fp3/O+wv5dwHi2a9ByUGzRVBf3A1+leG+
	UqGrC1cnX5KQFUi1xZTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbzkD-009RzA-RK; Tue, 14 Mar 2023 08:10:53 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbzk4-009Rxq-PB
	for linux-rockchip@lists.infradead.org; Tue, 14 Mar 2023 08:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678781444; x=1710317444;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=X0KxmQowXDDwSTHyOkkSqL6l1rbqAQ9YKCBJzCgDIOw=;
  b=D2CnbYXQQ4W2TnsZubf5YXFT0qhAggGEBuRfWzfPsOEpaIG1NV9F8edF
   bKlW1pyJTpzXuZswij2QNLjYkZ3mn9IOOU5Szm+QxRhCq+KUGhO+xlBU5
   41C2snA7prSTCsrlDqyVh7iu8/mWfmnLpuTIj7uPqZpRpNC+FXYOqtbY/
   rsUZI/lfitRjlKMjjtlIJsfOQ5aYP00AfnaawJCtZypkQM2ZFTZ5Klnbh
   uNccpG2iOyw7FVt10VZF/BYGmWhucqlgLL9QEjW+lOP+9eknlHKHiiAfq
   QTdfDeXOq2uOfBUOe9LdYpNYIzIxu9OPJjfj07XUiQKMr9aMrMw0XSB7o
   A==;
X-IronPort-AV: E=Sophos;i="5.98,259,1673884800"; 
   d="scan'208";a="225366748"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 14 Mar 2023 16:10:36 +0800
IronPort-SDR: BjUgR1M1VW10WePNuGoFG+tSbbQRX5XCEdXm/jCXGjfTvaPMI10R5MJzQjmZIsYWHDHGPpFvuz
 60zRVrNcY3BAy4r7IPtFfH095dV8bsckxitv1Q9zbBY/K5RFDCXVKROdzD3Z5Xy6yIrxYQqT9R
 RoMMpsqoibVTh2C+NgLSJtkcVEVoClOBLpkKU86XTDX971pnYZhMkVo8t7Ttsl882g7S3cjbiZ
 CWs2SaKoiInfO1Zkg7zmmDDojbxk9Xx9sMUZhWy1bu+ssbp/n9XBdTGPhOAHAZg3h4WvZsOcD2
 ueg=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Mar 2023 00:21:24 -0700
IronPort-SDR: qNp7JY0APSSgZyTfcpoq0s7J4qEPkFT88VL3X7d+xrJzWqGqSoQwtxDCQmwFOl8MyzNALA9lQ9
 SWgezjAm5r3lKkdBNV/YcmpQmoarbdBCEZGVjQs78QQFPfN+jFfHKyMsv0bP19aY4Uy2t/dCnn
 AIBJk0nxlIX9CwGOsZBEd8pt7/yz9abu0+xUzpCgXxOg94+sHtCZEzN3p/JzeI1zg9LHzGw6s3
 qN6yXu6mI0w45Ba9M1HavHfBVk5KWNOW0xKc/3A0LT+ue2CtIDcDIv8G8mv8+wgFFOAPokRztS
 spY=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Mar 2023 01:10:38 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PbR6N5v38z1RtVt
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 01:10:36 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1678781435; x=1681373436; bh=X0KxmQowXDDwSTHyOkkSqL6l1rbqAQ9YKCB
	JzCgDIOw=; b=aQkApqFk9I+MNhGHlB40yywZEUpsCVbJ29Z4NmlcgwGr0HSf9P7
	YNC/NpiufUwyDl6VB2D/wPgxPUOK0flCLsoGSsWAx2S55jQBoLX38U951lj8nXvV
	cKWvvV7n6D8OllDSGMqaVxNTKSiITVzzY/oxdmfr1e6XbWL0zhPro3aRaMEysKo0
	zibVPE/XxlYtiRJiqjeoMAgHOruplq+tmQYq1wqn124YlaAoNO2x+cNOBPqlLVO2
	2Dndp8naUWPs3/592xJE9aSqLxOCuZ3Mcr0L970x6oefAJmndFE+f5sIZzkq3t6t
	/pBxs69vHg9Q2L9LnDAvLtCiiLpH2dWc4Iw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id S9-vvLnSO-OY for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Mar 2023 01:10:35 -0700 (PDT)
Received: from [10.149.53.254] (washi.fujisawa.hgst.com [10.149.53.254])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PbR6H6r4sz1RtVm;
	Tue, 14 Mar 2023 01:10:31 -0700 (PDT)
Message-ID: <3c4ed614-f088-928f-2807-deaa5e4b668a@opensource.wdc.com>
Date: Tue, 14 Mar 2023 17:10:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller
 driver
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <ecd09f27-b799-4741-2c5a-a2de99776c51@opensource.wdc.com>
 <CAAEEuhrk4cSC312UiAL3UwoDZ=urrdDcBThcNHd1dqnAuJTzAw@mail.gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhrk4cSC312UiAL3UwoDZ=urrdDcBThcNHd1dqnAuJTzAw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_011044_835872_FC26306D 
X-CRM114-Status: GOOD (  29.90  )
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

T24gMy8xNC8yMyAxNjo1NywgUmljayBXZXJ0ZW5icm9layB3cm90ZToKPiBPbiBUdWUsIE1hciAx
NCwgMjAyMyBhdCAxOjAy4oCvQU0gRGFtaWVuIExlIE1vYWwKPiA8ZGFtaWVuLmxlbW9hbEBvcGVu
c291cmNlLndkYy5jb20+IHdyb3RlOgo+Pgo+PiBPbiAyLzE0LzIzIDIzOjA4LCBSaWNrIFdlcnRl
bmJyb2VrIHdyb3RlOgo+Pj4gVGhpcyBpcyBhIHNlcmllcyBvZiBwYXRjaGVzIHRoYXQgZml4ZXMg
dGhlIFBDSWUgZW5kcG9pbnQgY29udHJvbGxlciBkcml2ZXIKPj4+IGZvciB0aGUgUm9ja2NoaXAg
UkszMzk5IFNvQy4gVGhlIGRyaXZlciB3YXMgaW50cm9kdWNlZCBpbgo+Pj4gY2Y1OTBiMDc4Mzkx
ICgiUENJOiByb2NrY2hpcDogQWRkIEVQIGRyaXZlciBmb3IgUm9ja2NoaXAgUENJZSBjb250cm9s
bGVyIikKPj4+IFRoZSBvcmlnaW5hbCBkcml2ZXIgaGFkIGlzc3VlcyBhbmQgd291bGQgbm90IGFs
bG93IGZvciB0aGUgUkszMzk5IHRvCj4+PiBvcGVyYXRlIGluIFBDSWUgZW5kcG9pbnQgbW9kZSBj
b3JyZWN0bHkuIFRoaXMgcGF0Y2ggc2VyaWVzIGZpeGVzIHRoYXQgc28KPj4+IHRoYXQgdGhlIFBD
SWUgY29yZSBjb250cm9sbGVyIG9mIHRoZSBSSzMzOTkgU29DIGNhbiBub3cgYWN0IGFzIGEgUENJ
ZQo+Pj4gZW5kcG9pbnQuIFRoaXMgaXMgdjIgb2YgdGhlIHBhdGNoIHNlcmllcyBhbmQgYWRkcmVz
c2VzIHRoZSBjb25jZXJucyB0aGF0Cj4+PiB3ZXJlIHJhaXNlZCBkdXJpbmcgdGhlIHJldmlldyBv
ZiB0aGUgZmlyc3QgdmVyc2lvbi4KPj4KPj4gUmljaywKPj4KPj4gQXJlIHlvdSBnb2luZyB0byBz
ZW5kIGEgcmViYXNlZCBWMyBzb29uID8gSSBoYXZlIGEgY291cGxlIG9mIGFkZGl0aW9uYWwKPj4g
cGF0Y2hlcyB0byBhZGQgb24gdG9wIG9mIHlvdXIgc2VyaWVzLi4uCj4+Cj4gCj4gSSdsbCB0cnkg
dG8gc2VuZCBhIFYzIHRoaXMgd2Vlay4gVGhlIGNoYW5nZXMgdG8gVjIgd2lsbCBiZSB0aGUgaXNz
dWVzCj4gcmFpc2VkIGFuZCBkaXNjdXNzZWQgb24gdGhlIFYyIGhlcmUgaW4gdGhlIG1haWxpbmcg
bGlzdCB3aXRoIHRoZSBhZGRpdGlvbmFsCj4gY29kZSBmb3IgcmVtb3ZpbmcgdGhlIHVuc3VwcG9y
dGVkIE1TSS1YIGNhcGFiaWxpdHkgbGlzdCAod2FzIGRpc2N1c3NlZAo+IGluIHRoZSBtYWlsaW5n
IGxpc3QgYXMgd2VsbCkuCgpUaGFua3MuCgpBZGRpdGlvbmFsIHBhdGNoIG5lZWRlZCB0byBhdm9p
ZCBwcm9ibGVtcyB3aXRoIHRoaXMgY29udHJvbGxlciBpcyB0aGF0CndlIG5lZWQgdG8gc2V0ICIu
YWxpZ24gPSAyNTYiIGluIHRoZSBmZWF0dXJlcy4gT3RoZXJ3aXNlLCB0aGluZ3MgZG8gbm90Cndv
cmsgd2VsbC4gVGhpcyBpcyBiZWNhdXNlIHRoZSBBVFUgZHJvcHMgdGhlIGxvdyA4LWJpdHMgb2Yg
dGhlIFBDSQphZGRyZXNzZXMuIEl0IGlzIGEgb25lIGxpbmVyIHBhdGNoLCBzbyBmZWVsIGZyZWUg
dG8gYWRkIGl0IHRvIHlvdXIgc2VyaWVzLgoKSSBhbHNvIG5vdGljZWQgcmFuZG9tIGlzc3VlcyB3
aWNoIHNlZW0gdG8gYmUgZHVlIHRvIGxpbmstdXAgdGltaW5nLi4uIFdlCnByb2JhYmx5IHdpbGwg
bmVlZCB0byBpbXBsZW1lbnQgYSBwb2xsIHRocmVhZCB0byBkZXRlY3QgYW5kIG5vdGlmeSB3aXRo
CnRoZSBsaW5rdXAgY2FsbGJhY2sgd2hlbiB3ZSBhY3R1YWxseSBoYXZlIHRoZSBsaW5rIGVzdGFi
bGlzaGVkIHdpdGggdGhlCmhvc3QgKHNlZSB0aGUgZHctZXAgY29udHJvbGxlciB3aGljaCBkb2Vz
IHNvbWV0aGluZyBzaW1pbGFyKS4KCgpGcm9tOiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9h
bEBvcGVuc291cmNlLndkYy5jb20+CkRhdGU6IFRodSwgOSBNYXIgMjAyMyAxNjozNzoyNCArMDkw
MApTdWJqZWN0OiBbUEFUQ0hdIFBDSTogcm9ja2NoaXA6IFNldCBhZGRyZXNzIGFsaWdubWVudCBm
b3IgZW5kcG9pbnQgbW9kZQoKVGhlIGFkZHJlc3MgdHJhbnNsYXRpb24gdW5pdCBvZiB0aGUgcm9j
a2NoaXAgRVAgY29udHJvbGxlciBkb2VzIG5vdCB1c2UKdGhlIGxvd2VyIDggYml0cyBvZiBhIFBD
SWUtc3BhY2UgYWRkcmVzcyB0byBtYXAgbG9jYWwgbWVtb3J5LiBUaHVzIHdlCm11c3Qgc2V0IHRo
ZSBhbGlnbiBmZWF0dXJlIGZpZWxkIHRvIDI1NiB0byBsZXQgdGhlIHVzZXIga25vdyBhYm91dCB0
aGlzCmNvbnN0cmFpbnQuCgpTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxl
bW9hbEBvcGVuc291cmNlLndkYy5jb20+Ci0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLWVwLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCmIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKaW5kZXggMTJkYjlhOWQ5MmFm
Li5jNmEyM2RiODQ5NjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC1lcC5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1l
cC5jCkBAIC00NzEsNiArNDcxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1
cmVzCnJvY2tjaGlwX3BjaWVfZXBjX2ZlYXR1cmVzID0gewogCS5saW5rdXBfbm90aWZpZXIgPSBm
YWxzZSwKIAkubXNpX2NhcGFibGUgPSB0cnVlLAogCS5tc2l4X2NhcGFibGUgPSBmYWxzZSwKKwku
YWxpZ24gPSAyNTYsCiB9OwoKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyoK
LS0gCjIuMzkuMgoKCi0tIApEYW1pZW4gTGUgTW9hbApXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
