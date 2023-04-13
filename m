Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B96C77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 14:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UUZjdirQ7Ce5nscIJGDKmkLkBEk7vRTEZFiSSvmNSc=; b=cptxfNPICVvvgI
	7Sud5pRbU2FuuIZ58rBzUc+czHdMChiZtIF1wFF/W2M5RMhpu2KBa/sHNG826gssXTVsfSLZbR2XI
	0U6SgB47eN0MFmMP30eOOJNHKujztDROOnXoWZDUk7QWvl6IBb1OePPESdkGatQIHwGNSJgliGWL0
	ct/ID/i+CSDFuzOy0dZqmvYf1NrWQL/uxAi/OVSz8AHgia+VoZvZLpXxOtqw2cT/+mNSh/f7o6BAs
	Z6BXU2T10zAbfM+FHFAjoWF4QO4Vf9pCbNfgBVQtzQV5Wi/9CAZsDfceGeEpGF8oyyJSyzlp2Bn9R
	Oac/l2o1eHXYX92Qb64g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmy2k-006PUt-2p;
	Thu, 13 Apr 2023 14:35:22 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmy2g-006PTU-2J;
	Thu, 13 Apr 2023 14:35:20 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1879502e2afso1958551fac.5;
        Thu, 13 Apr 2023 07:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681396516; x=1683988516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cP1l0y4cD5yKB1hePqZclJ5kk1fyrn0MXx0ITLwG3DY=;
        b=lSjxDXA8pv9ruHAzrKSK+AgBNOx5sPVcSb1NuYft4l06BYSf+lducvV84LnIhGUf+n
         URr/dzeEpv2R4bs+TgLnuMbMwkXEcBBKDMOAQTyoFcpF62Opu8kZ7vxMVoYoh+QIIc9P
         Ke+iVPNT+W7F5Pv0f8A5xdPHZHe2gcNxfJJ2fM5XJ6jqteEznPgHxB5chSpOrf1Sib0m
         aHejbNbD/2Bj5dEJ+p3zv4CpGN6PpilHrPrQP0w0SO1xiqB16zmPzJ5Kc9/P6iIdQ26b
         SJfR4JaqFYoI++TxhE+W5GwdIjiNmBWZGbN8Y8b1dl/2qdRFVor1AJtwxqm9/3eeVUwL
         wSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681396516; x=1683988516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cP1l0y4cD5yKB1hePqZclJ5kk1fyrn0MXx0ITLwG3DY=;
        b=HBXQJdgvae9FgqPHsXI9a+tT9BSUfM3k70FWa5jdDb1z7Rx5iZz2nw/+6JOrH2F+re
         /wjt8zu7/H9Bghdd2Ol5CwK3n4dOZ6j+4crYxfLqN/iT8Z7rVLb7rjUkteENJj57S1uh
         v9kHHXm5NeEnoDHrWYboVimRDvFG0OJa511aoKxCWZBRHDMB13Cd5Cf9d7rlpJcim0Ej
         jTqII1hqQjX8GVTRv0MeWBjKNW8E+ch7o/O7kDjwMRbAQcjPY41FUk0jfNaSCIsG+waE
         xQE7aTAF60JsRYgQaj/rWodU8BcRfud8+gNjU/RZQiWC+6nVH+R1XwW/DwUS4A6xyfQ8
         kY8Q==
X-Gm-Message-State: AAQBX9fyVcR5IS09/q4gE37/P7lseNmE1EGhW22vNZXymy0+H3WN7jtv
	Ehi1IjQn5XFfFnmrJTm0L8pSw01Anc5p/ff3iPQ=
X-Google-Smtp-Source: AKy350ZifiwgVFIFHHCxOfDLu7eQ6z0WhZE63KnFK+OlGp74DjjsP6/VEb8ragWGy9qRyK+pT+WNCbaI7yCyE9KpaxY=
X-Received: by 2002:a05:6870:3326:b0:17e:5bc4:9ac9 with SMTP id
 x38-20020a056870332600b0017e5bc49ac9mr1314902oae.10.1681396516540; Thu, 13
 Apr 2023 07:35:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <ecd09f27-b799-4741-2c5a-a2de99776c51@opensource.wdc.com> <CAAEEuhrk4cSC312UiAL3UwoDZ=urrdDcBThcNHd1dqnAuJTzAw@mail.gmail.com>
 <3c4ed614-f088-928f-2807-deaa5e4b668a@opensource.wdc.com> <CAAEEuhqk0scWd3wFbVb9fSgHxPBKotpEPNi+YPG4GD9vLO94mw@mail.gmail.com>
 <8392a7de-666a-bce6-dc9f-b60d6dd93013@opensource.wdc.com> <1e8184e9-7e0b-2598-cc5a-e46d6c2f152a@opensource.wdc.com>
 <CAAEEuhoB2LqL=B_BQ0X2T-E+Yt83kPUiv-R9dgU0O-f22ukcWg@mail.gmail.com>
 <CAAEEuhp5WTkaPDRLa8frc9Sc43A3HwApW647v-E9Bse6p5Df5Q@mail.gmail.com>
 <15208569-b3d7-b9f7-6676-9d9122cac84a@opensource.wdc.com> <ZDgIZmCgLoC/uieX@lpieralisi>
In-Reply-To: <ZDgIZmCgLoC/uieX@lpieralisi>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 13 Apr 2023 16:34:40 +0200
Message-ID: <CAAEEuhocJpmtAQPCxgnsEbkqe9yyK1-p0ZpwuZBJxHVbMukiYQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Damien Le Moal <damien.lemoal@opensource.wdc.com>, alberto.dassatti@heig-vd.ch, 
	xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	Damien Le Moal <dlemoal@fastmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_073518_757413_5726A698 
X-CRM114-Status: GOOD (  42.30  )
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

T24gVGh1LCBBcHIgMTMsIDIwMjMgYXQgMzo0OeKAr1BNIExvcmVuem8gUGllcmFsaXNpIDxscGll
cmFsaXNpQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBNYXIgMTcsIDIwMjMgYXQgMDc6
MDk6MDRBTSArMDkwMCwgRGFtaWVuIExlIE1vYWwgd3JvdGU6Cj4gPiBPbiAzLzE3LzIzIDAxOjM0
LCBSaWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+ID4gPj4+IEJ5IHRoZSB3YXksIGVuYWJsaW5nIHRo
ZSBpbnRlcnJ1cHRzIHRvIHNlZSB0aGUgZXJyb3Igbm90aWZpY2F0aW9ucywgSSBkbyBzZWUgYQo+
ID4gPj4+IGxvdCBvZiByZXRyeSB0aW1lb3V0IGFuZCBvdGhlciByZWNvdmVyYWJsZSBlcnJvcnMu
IFNvIHRoZSBpc3N1ZXMgSSBhbSBzZWVpbmcKPiA+ID4+PiBjb3VsZCBiZSBkdWUgdG8gbXkgUENJ
IGNhYmxlIHNldHVwIHRoYXQgaXMgbm90IGlkZWFsIChiYWQgc2lnbmFsLCBncm91bmQgbG9vcHMs
Cj4gPiA+Pj4gLi4uID8pLiBOb3Qgc3VyZS4gSSBkbyBub3QgaGF2ZSBhIFBDSSBhbmFseXplciBo
YW5keSA6KQo+ID4gPgo+ID4gPiBJIGhhdmUgZW5hYmxlZCB0aGUgSVJRcyBhbmQgbWVzc2FnZXMg
dGhhbmtzIHRvIHlvdXIgcGF0Y2hlcyBidXQgSSBkb24ndCBnZXQKPiA+ID4gbWVzc2FnZXMgZnJv
bSB0aGUgSVJRcyAoaXQgc2VlbXMgbm8gSVJRcyBhcmUgZmlyZWQpLiBNeSBQQ0llIGxpbmsgc2Vl
bXMgc3RhYmxlLgo+ID4gPiBUaGUgbWFpbiBpc3N1ZSBJIGZhY2UgaXMgc3RpbGwgdGhhdCBhZnRl
ciBhIHJhbmRvbSBhbW91bnQgb2YgdGltZSwgdGhlIEJBUnMgYXJlCj4gPiA+IHJlc2V0IHRvIDAs
IEkgZG9uJ3QgaGF2ZSBhIFBDSWUgYW5hbHl6ZXIgc28gSSBjYW5ub3QgY2hhc2UgY29uZmlnIHNw
YWNlIFRMUHMKPiA+ID4gKGUuZy4sIGhvc3Qgd3JpdGluZyB0aGUgQkFSIHZhbHVlcyB0byB0aGUg
Y29uZmlnIGhlYWRlciksIGJ1dCBJIGRvbid0IHRoaW5rIHRoYXQKPiA+ID4gdGhlIHByb2JsZW0g
Y29tZXMgZnJvbSBhIFRMUCBpc3N1ZWQgZnJvbSB0aGUgaG9zdC4gKGl0IG1pZ2h0IGJlKS4KPiA+
Cj4gPiBIbW1tLi4uIEkgYW0gZ2V0dGluZyBsb3RzIG9mIElSUXMsIGVzcGVjaWFsbHkgdGhlIG9u
ZXMgc2lnbmFsaW5nICJyZXBsYXkgdGltZXIKPiA+IHRpbWVkIG91dCIgYW5kICJyZXBsYXkgdGlt
ZXIgcm9sbGVkIG92ZXIgYWZ0ZXIgNCB0cmFuc21pc3Npb25zIG9mIHRoZSBzYW1lIFRMUCIKPiA+
IGJ1dCBhbHNvIHNvbWUgInBoeSBlcnJvciBkZXRlY3RlZCBvbiByZWNlaXZlIHNpZGUiLi4uIE5l
ZWQgdG8gdHJ5IHRvIHJld29yayBteQo+ID4gY2FibGUgc2V0dXAgSSBndWVzcy4KPiA+Cj4gPiBB
cyBmb3IgdGhlIEJBUnMgYmVpbmcgcmVzZXQgdG8gMCwgSSBoYXZlIG5vdCBjaGVja2VkLCBidXQg
aXQgbWF5IGJlIHdoeSBJIHNlZQo+ID4gdGhpbmdzIG5vdCB3b3JraW5nIGFmdGVyIHNvbWUgaW5h
Y3Rpdml0eS4gV2lsbCBjaGVjayB0aGF0LiBXZSBtYXkgYmUgc2VlaW5nIHRoZQo+ID4gc2FtZSBy
ZWdhcmRpbmcgdGhhdC4KPiA+Cj4gPiA+IEkgZG9uJ3QgdGhpbmsgaXQncyBhIGJ1ZmZlciBvdmVy
ZmxvdyAvIG91dC1vZi1ib3VuZHMgYWNjZXNzIGJ5IGtlcm5lbAo+ID4gPiBjb2RlIGZvciB0d28g
cmVhc29ucwo+ID4gPiAxKSBUaGUgdmFsdWVzIGluIHRoZSBjb25maWcgc3BhY2UgYXJvdW5kIHRo
ZSBCQVJzIGlzIGNvaGVyZW50IGFuZCB1bmNoYW5nZWQKPiA+ID4gMikgVGhlIGJhcnMgYXJlIHJl
c2V0IHRvIDAgYW5kIG5vdCBhIHJhbmRvbSB2YWx1ZQo+ID4gPgo+ID4gPiBJIHN1c3BlY3QgYSBo
YXJkd2FyZSByZXNldCBvZiB0aG9zZSByZWdpc3RlcnMgaXNzdWVkIGludGVybmFsbHkgaW4gdGhl
Cj4gPiA+IFBDSWUgY29udHJvbGxlciwKPiA+ID4gSSBkb24ndCBrbm93IHdoeSAoaXQgbWlnaHQg
YmUgYSBsaW5rIHJlbGF0ZWQgZXZlbnQgb3IgcG93ZXIgc3RhdGUKPiA+ID4gcmVsYXRlZCBldmVu
dCkuCj4gPiA+Cj4gPiA+IEkgaGF2ZSBhbHNvIGV4cGVyaWVuY2VkIHZlcnkgc2xvdyBiZWhhdmlv
ciB3aXRoIHRoZSBQQ0kgZW5kcG9pbnQgdGVzdCBkcml2ZXIsCj4gPiA+IGUuZy4sIHBjaXRlc3Qg
LXcgMTAyNCAtZCB3b3VsZCB0YWtlIHRlbnMgb2Ygc2Vjb25kcyB0byBjb21wbGV0ZS4gSXQgc2Vl
bXMgdG8KPiA+ID4gY29tZSBmcm9tIExDUkMgZXJyb3JzLCB3aGVuIEkgY2hlY2sgdGhlICJMQ1JD
IEVycm9yIGNvdW50IHJlZ2lzdGVyIgo+ID4gPiBAMHhGRDkwJzAyMTQgSSBjYW4gc2VlIGl0IGRy
YXN0aWNhbGx5IGluY3JlYXNlIGJldHdlZW4gdHdvIGNhbGxzIG9mIHBjaXRlc3QKPiA+ID4gKHdo
ZW4gSSBtZWFuIGRyYXN0aWNhbGx5IGl0IG1lYW5zIGJ5IDY2MDcgKDB4MTlDRikgZm9yIGV4YW1w
bGUpLgo+ID4gPgo+ID4gPiBUaGUgIkVDQyBDb3JyZWN0YWJsZSBFcnJvciBDb3VudCBSZWdpc3Rl
ciIgQDB4RkQ5MCcwMjE4IHJlYWRzIDAgdGhvdWdoLgo+ID4gPgo+ID4gPiBJIGhhdmUgdHJpZWQg
dG8gc2hvcnRlbiB0aGUgY2FibGluZyBieSByZW1vdmluZyBvbmUgb2YgdGhlIFBDSWUgZXh0ZW5k
ZXJzLCB0aGF0Cj4gPiA+IGRpZG4ndCBjaGFuZ2UgdGhlIGlzc3VlcyBtdWNoLgo+ID4gPgo+ID4g
PiBBbnkgaWRlYXMgYXMgdG8gd2h5IEkgc2VlIGEgbGFyZ2UgbnVtYmVyIG9mIFRMUHMgd2l0aCBM
Q1JDIGVycm9ycyBpbiB0aGVtID8KPiA+ID4gRG8geW91IGV4cGVyaWVuY2UgdGhlIHNhbWUgPyBX
aGF0IGFyZSB5b3VyIHZhbHVlcyBpbiAweEZEOTAnMDIxNCB3aGVuCj4gPiA+IHJ1bm5pbmcgZS5n
LiwgcGNpdGVzdCAtdyAxMDI0IC1kIChub3RlOiB5b3UgY2FuIHJlc2V0IHRoZSBjb3VudGVyIGJ5
IHdyaXRpbmcKPiA+ID4gMHhGRkZGIHRvIGl0IGluIGNhc2UgaXQgcmVhY2hlcyB0aGUgbWF4aW11
bSB2YWx1ZSBvZiAweEZGRkYpLgo+ID4KPiA+IEkgaGF2ZSBub3QgY2hlY2tlZC4gQnV0IEkgd2ls
bCBsb29rIGF0IHRoZXNlIGNvdW50ZXJzIHRvIHNlZSB3aGF0IEkgaGF2ZSB0aGVyZS4KPgo+IEhp
LAo+Cj4gY2hlY2tpbmcgd2hlcmUgYXJlIHdlIHdpdGggdGhpcyB0aHJlYWQgYW5kIHdoZXRoZXIg
dGhlcmUgaXMgc29tZXRoaW5nIHRvCj4gY29uc2lkZXIgZm9yIHY2LjQsIGlmIHRlc3Rpbmcgc3Vj
Y2VlZHMuCj4KPiBUaGFua3MsCj4gTG9yZW56bwoKSGVsbG8sClRoYW5rIHlvdSBmb3IgY29uc2lk
ZXJpbmcgdGhpcy4KClRoZXJlIGlzIGEgVjMgb2YgdGhpcyBwYXRjaCBzZXJpZXMgWzF8LCB0aGF0
IGZpeGVzIHRoZSBpc3N1ZXMKZW5jb3VudGVyZWQgd2l0aCB0aGUgVjIuClRoZSBkZWJ1Z2dpbmcg
Zm9sbG93aW5nIHRoaXMgdGhyZWFkIHdhcyBkaXNjdXNzZWQgb2ZmLWxpc3Qgd2l0aCBEYW1pZW4g
TGUgTW9hbC4KVGhlIFYzIGhhcyBiZWVuIHRlc3RlZCBzdWNjZXNzZnVsbHkgYnkgRGFtaWVuIExl
IE1vYWwgWzJdCgpJIHdpbGwgc3VibWl0IGEgVjQgbmV4dCB3ZWVrLCBzaW5jZSB0aGVyZSBhcmUg
bWlub3IgY2hhbmdlcyB0aGF0IHdlcmUKc3VnZ2VzdGVkIGluCnRoZSB0aHJlYWRzIGZvciB0aGUg
VjMgKG1vc3RseSBtaW5vciBjaGFuZ2VzIGluIGNvZGUgc3R5bGUsIG1hY3JvcywgY29tbWVudHMp
LgoKSSBob3BlIGl0IGNhbiBiZSBjb25zaWRlcmVkIGZvciB2Ni40LCB0aGFuayB5b3UuCgpbMV0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzI5YTVjY2MzLWQyYzgtYjg0NC1hMzMz
LTI4YmMyMDY1Nzk0MkBmYXN0bWFpbC5jb20vVC8jbWM4ZjI1ODlmZjA0ODYyMTc1Y2IwYzkwNmIz
OGNiMzdhOTBkYjBlNDIKWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8yOWE1
Y2NjMy1kMmM4LWI4NDQtYTMzMy0yOGJjMjA2NTc5NDJAZmFzdG1haWwuY29tLwoKCk5vdGVzIG9u
IHdoYXQgd2FzIGRpc2NvdmVyZWQgb2ZmLWxpc3QgOgoKVGhlIGlzc3VlcyByZWdhcmRpbmcgQkFS
IHJlc2V0IHdlcmUgZHVlIHRvIHBvd2VyIHN1cHBseSBpc3N1ZXMgKFBDSSBjYWJsZQpqdW1waW5n
IGhvc3QgM1YzIHN1cHBseSB0byBTb0MgM1YzIHN1cHBseSwgYW5kIGFyZSBmaXhlZCB3aXRoIHBy
b3BlciBjYWJsaW5nKS4KYSBmZXcgTENSQyBlcnJvcnMgYXJlIG5vcm1hbCB3aXRoIFBDSWUsIHRo
ZSBudW1iZXIgd2lsbCBkZXBlbmQgb24Kc2lnbmFsIGludGVncml0eQphdCB0aGUgcGh5c2ljYWwg
bGF5ZXIgKGNhYmxpbmcpLgoKCkJlc3QgcmVnYXJkcywKUmljawoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
