Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E91B7C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 15:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6DItApbPvm2YXP2W5f+PB7mADazE1WY+mjAenttb/w=; b=M97d+pEfVtd8xc
	LaoHibbulMyWVvFupQyDUFexE4msTTHEwcI7IJavAKGdBJ1LefiSiaXKVD/cgdA48COK7Lj8xKjFV
	rM0/uShV31LnK5Avu1TOnz1phfYSmI/acFXd2HeN7DbMg4LsMgd5dLUFKpNE/fUKDc6wxcycDaQ7y
	u9FQn8SXjFy8cnZOfQEQ9yrobq7C2R8xKSzHoO4qSq4UtZyrk84Lkqwy0kKHFsECHpkTvDStuOgYu
	gybC1QQEb1UGuosCguqqRGi7DMHXr2HUiWw79yidmIro2FH8UaxvrsomFjR2Z3NeZc1D3jAKwE6uN
	LxTD5vEBtdekEN5VlPqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc6rK-00Ag1j-1q;
	Tue, 14 Mar 2023 15:46:42 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc6rG-00Ag0G-09;
	Tue, 14 Mar 2023 15:46:39 +0000
Received: by mail-ot1-x32d.google.com with SMTP id o4-20020a9d6d04000000b00694127788f4so8634963otp.6;
        Tue, 14 Mar 2023 08:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678808796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9wkL7da/Rc4tgZfDJba08p3nQBvevz/W1pJs6r+8hiM=;
        b=Xk1kWqkuxArLQPy905x/qDLlkMqO7O6fXOJNAlhMsW4KcZ9MZi/d1Kx7hW8EjH56nG
         NLQcbcSRYEeNZavdv07TciYk9foYjygVSg9VDrgrAb61HOnXiDu4QE7RaQmtsNwO/v46
         O4y27pdeWcLr8Z5u/AWf36lUT2VZhYNUiNUazPNFci0a1ukjqzT3nF7lscwiTBdA0xM6
         QpIrqqxaUXk2tQZPbIysxaJ0QrEPoz1gEJnOHBY17d3/WCfPgXOHVBrCqrbTQpn6i+oz
         6gsnm8hNyWKHqEpQ77MiJdDWU8Lplf7IoQgZf2qnuN4Zwggit4zpeUEfJFSaEi1EnfZA
         4U/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678808796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9wkL7da/Rc4tgZfDJba08p3nQBvevz/W1pJs6r+8hiM=;
        b=23Uwo2YHV6bDZmdCF7zkHsuDUMMTOgs9AoxMQVZL39vq8n/Bk+6lljrhCiASKKLYNs
         0mVjzdVD/Bs/CXZx8UPg4uouL9YGUuTzlb13bbeFI3xgTypEfYBvHIEA+PRF6oan74dy
         d6imGHfsj70nirvjgFlXRjx4+I9D+AsokSJMrun3mQ8+lMFB1VQ5vli06jABQZO09iyF
         iU+Ar1nCjjVNeD49AUaB0g1Cr0rAvUzwu5EZZZWIxZVFPojCx+GusLTjTNuQbdYwME5e
         Os53yTyD+dr4TQOIU88U9uToMq4437fZNa8yYHXKyAKVXDxDhFZbQ89wmXG9/dTuWFM5
         AVsg==
X-Gm-Message-State: AO0yUKUxn+6jDIjZAXnDZAmnlk3hf/vVquGo1NVR5rHOtcasGLKomun5
	jQLV2s0aWaq50m3MzOR/Z0cnNh/MG9b8nxz0HwU=
X-Google-Smtp-Source: AK7set//Z2qMLoNwWnbRcQ8l+8WelU3TiH20TsphZ7N50Gfa09Xj34+xbWP1VnWe3BCEG+e271UZKcGXir1lYpLxCZk=
X-Received: by 2002:a9d:5a90:0:b0:688:cf52:6e18 with SMTP id
 w16-20020a9d5a90000000b00688cf526e18mr12756257oth.4.1678808792329; Tue, 14
 Mar 2023 08:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-9-rick.wertenbroek@gmail.com> <0fa5cef4-7096-7f59-422a-98011d01437c@opensource.wdc.com>
In-Reply-To: <0fa5cef4-7096-7f59-422a-98011d01437c@opensource.wdc.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 14 Mar 2023 16:45:56 +0100
Message-ID: <CAAEEuhpiQDRy6EQwwf0e+e6MVv893YU6+Sbyz5k+Owp2vAi-nQ@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] PCI: rockchip: Use u32 variable to access 32-bit registers
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, stable@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_084638_088991_393AB5FD 
X-CRM114-Status: GOOD (  27.54  )
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

T24gV2VkLCBGZWIgMTUsIDIwMjMgYXQgMjozNOKAr0FNIERhbWllbiBMZSBNb2FsCjxkYW1pZW4u
bGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4gd3JvdGU6Cj4KPiBPbiAyLzE0LzIzIDIzOjA4LCBS
aWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+ID4gUHJldmlvdXNseSB1MTYgdmFyaWFibGVzIHdlcmUg
dXNlZCB0byBhY2Nlc3MgMzItYml0IHJlZ2lzdGVycywgdGhpcwo+ID4gcmVzdWx0ZWQgaW4gbm90
IGFsbCBvZiB0aGUgZGF0YSBiZWluZyByZWFkIGZyb20gdGhlIHJlZ2lzdGVycy4gQWxzbwo+ID4g
dGhlIGxlZnQgc2hpZnQgb2YgbW9yZSB0aGFuIDE2LWJpdHMgd291bGQgcmVzdWx0IGluIG1vdmlu
ZyBkYXRhIG91dAo+ID4gb2YgdGhlIHZhcmlhYmxlLiBVc2UgdTMyIHZhcmlhYmxlcyB0byBhY2Nl
c3MgMzItYml0IHJlZ2lzdGVycwo+ID4KPiA+IEZpeGVzOiBjZjU5MGIwNzgzOTEgKCJQQ0k6IHJv
Y2tjaGlwOiBBZGQgRVAgZHJpdmVyIGZvciBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIiKQo+ID4g
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IFNpZ25lZC1vZmYtYnk6IFJpY2sgV2VydGVu
YnJvZWsgPHJpY2sud2VydGVuYnJvZWtAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgfCAxMCArKysrKy0tLS0tCj4gPiAgZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggICAgfCAgMSArCj4gPiAgMiBmaWxl
cyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiA+IGluZGV4IGNhNWIzNjNiYS4u
Yjc4NjVhOTRlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLWVwLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hp
cC1lcC5jCj4gPiBAQCAtMjkyLDE1ICsyOTIsMTUgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X2VwX3NldF9tc2koc3RydWN0IHBjaV9lcGMgKmVwYywgdTggZm4sIHU4IHZmbiwKPiA+ICB7Cj4g
PiAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXAgPSBlcGNfZ2V0X2RydmRhdGEoZXBj
KTsKPiA+ICAgICAgIHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9ICZlcC0+cm9ja2No
aXA7Cj4gPiAtICAgICB1MTYgZmxhZ3M7Cj4gPiArICAgICB1MzIgZmxhZ3M7Cj4gPgo+ID4gICAg
ICAgZmxhZ3MgPSByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBST0NLQ0hJUF9QQ0lFX0VQX0ZVTkNfQkFTRShmbikgKwo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RS
TF9SRUcpOwo+ID4gICAgICAgZmxhZ3MgJj0gflJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfTU1D
X01BU0s7Cj4gPiAgICAgICBmbGFncyB8PQo+ID4gLSAgICAgICAgKChtdWx0aV9tc2dfY2FwIDw8
IDEpIDw8ICBST0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX01NQ19PRkZTRVQpIHwKPiA+IC0gICAg
ICAgIFBDSV9NU0lfRkxBR1NfNjRCSVQ7Cj4gPiArICAgICAgICAobXVsdGlfbXNnX2NhcCA8PCBS
T0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX01NQ19PRkZTRVQpIHwKPgo+IFJPQ0tDSElQX1BDSUVf
RVBfTVNJX0NUUkxfTU1DX09GRlNFVCBpcyAxNyBhbmQgbXVsdGlfbXNnX2NhcCBpcyBhIHU4Li4u
Cj4gTm90IG5pY2UuCj4KPiBMb2NhbGx5LCBJIGFkZGVkIHRoZSBsb2NhbCB2YXJpYWJsZToKPgo+
IHUzMiBtbWMgPSBtdWx0aV9tc2dfY2FwOwo+Cj4gQW5kIHVzZSBtbWMgaW5zdGVhZCBvZiBtdWx0
aV9tc2dfY2FwIHRvIGF2b2lkIGlzc3Vlcy4gQWxzbywKPgo+ID4gKyAgICAgICAgKFBDSV9NU0lf
RkxBR1NfNjRCSVQgPDwgUk9DS0NISVBfUENJRV9FUF9NU0lfRkxBR1NfT0ZGU0VUKTsKPiA+ICAg
ICAgIGZsYWdzICY9IH5ST0NLQ0hJUF9QQ0lFX0VQX01TSV9DVFJMX01BU0tfTVNJX0NBUDsKPiA+
ICAgICAgIHJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIGZsYWdzLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICBST0NLQ0hJUF9QQ0lFX0VQX0ZVTkNfQkFTRShmbikgKwo+ID4gQEAg
LTMxMiw3ICszMTIsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfZ2V0X21zaShzdHJ1
Y3QgcGNpX2VwYyAqZXBjLCB1OCBmbiwgdTggdmZuKQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBy
b2NrY2hpcF9wY2llX2VwICplcCA9IGVwY19nZXRfZHJ2ZGF0YShlcGMpOwo+ID4gICAgICAgc3Ry
dWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gJmVwLT5yb2NrY2hpcDsKPiA+IC0gICAgIHUx
NiBmbGFnczsKPiA+ICsgICAgIHUzMiBmbGFnczsKPiA+Cj4gPiAgICAgICBmbGFncyA9IHJvY2tj
aGlwX3BjaWVfcmVhZChyb2NrY2hpcCwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFJPQ0tDSElQX1BDSUVfRVBfRlVOQ19CQVNFKGZuKSArCj4gPiBAQCAtMzc0LDcgKzM3NCw3
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9zZW5kX21zaV9pcnEoc3RydWN0IHJvY2tj
aGlwX3BjaWVfZXAgKmVwLCB1OCBmbiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHU4IGludGVycnVwdF9udW0pCj4gPiAgewo+ID4gICAgICAgc3RydWN0IHJvY2tj
aGlwX3BjaWUgKnJvY2tjaGlwID0gJmVwLT5yb2NrY2hpcDsKPiA+IC0gICAgIHUxNiBmbGFncywg
bW1lLCBkYXRhLCBkYXRhX21hc2s7Cj4gPiArICAgICB1MzIgZmxhZ3MsIG1tZSwgZGF0YSwgZGF0
YV9tYXNrOwo+ID4gICAgICAgdTggbXNpX2NvdW50Owo+ID4gICAgICAgdTY0IHBjaV9hZGRyLCBw
Y2lfYWRkcl9tYXNrID0gMHhmZjsKPiA+ICAgICAgIHUzMiByOwo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLXJvY2tjaGlwLmgKPiA+IGluZGV4IGU5MGMyYTJiOC4uMTFkYmY1M2NkIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmgKPiA+ICsr
KyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gPiBAQCAtMjI3LDYg
KzIyNyw3IEBACj4gPiAgI2RlZmluZSBST0NLQ0hJUF9QQ0lFX0VQX0NNRF9TVEFUVVMgICAgICAg
ICAgICAgICAgICAweDQKPiA+ICAjZGVmaW5lICAgUk9DS0NISVBfUENJRV9FUF9DTURfU1RBVFVT
X0lTICAgICAgICAgICAgIEJJVCgxOSkKPiA+ICAjZGVmaW5lIFJPQ0tDSElQX1BDSUVfRVBfTVNJ
X0NUUkxfUkVHICAgICAgICAgICAgICAgICAgICAgICAgMHg5MAo+ID4gKyNkZWZpbmUgICBST0NL
Q0hJUF9QQ0lFX0VQX01TSV9GTEFHU19PRkZTRVQgICAgICAgICAgICAgICAgICAxNgo+Cj4gWW91
IGFyZSBub3QgdXNpbmcgdGhpcyBtYWNybyBhbnl3aGVyZS4gVGhlIG5hbWUgaXMgYWxzbyBub3Qg
dmVyeQo+IGRlc2NyaXB0aXZlLiBCZXR0ZXIgaGF2ZSBpdCBhczoKPgo+ICNkZWZpbmUgICBST0NL
Q0hJUF9QQ0lFX0VQX01TSV9DVFJMX01FICAgICAgICAgIEJJVCgxNikKPgo+IHRvIG1hdGNoIHRo
ZSBUUk0gbmFtZSBhbmQgYmUgY2xlYXIgdGhhdCB0aGUgYml0IGluZGljYXRlcyBpZiBNU0kgaXMK
PiBlbmFibGVkIG9yIG5vdC4KPgoKVGhpcyBpcyBhbHJlYWR5IHRoZSBjYXNlLCB0aGUgI2RlZmlu
ZSBpcyBhbHJlYWR5IHRoZXJlLgojZGVmaW5lIFJPQ0tDSElQX1BDSUVfRVBfTVNJX0NUUkxfTUUg
QklUKDE2KQpUaGUgb3RoZXIgb2Zmc2V0IGlzIGZvciBhbGwgdGhlIE1TSSBmbGFncyB0b2dldGhl
ciwgdGhpcyBvZmZzZXQgaXMgdXNlZAp3aGVuIHRoZSBmbGFncyBhcmUgcmV0cmlldmVkIGFsdG9n
ZXRoZXIsIHNlZSByb2NrY2hpcF9wY2llX2VwX3NldF9tc2koKQpUaGUgTUUgYml0IGlzIGFsc28g
dXNlZCB3aGVuIHdlIG5lZWQgdG8gY2hlY2sgdGhlIGJpdCBzcGVjaWZpY2FsbHksIHNlZQpyb2Nr
Y2hpcF9wY2llX2VwX2dldF9tc2koKS4KCj4gPiAgI2RlZmluZSAgIFJPQ0tDSElQX1BDSUVfRVBf
TVNJX0NUUkxfTU1DX09GRlNFVCAgICAgICAgICAgICAgIDE3Cj4gPiAgI2RlZmluZSAgIFJPQ0tD
SElQX1BDSUVfRVBfTVNJX0NUUkxfTU1DX01BU0sgICAgICAgICBHRU5NQVNLKDE5LCAxNykKPiA+
ICAjZGVmaW5lICAgUk9DS0NISVBfUENJRV9FUF9NU0lfQ1RSTF9NTUVfT0ZGU0VUICAgICAgICAg
ICAgICAgMjAKPgo+IC0tCj4gRGFtaWVuIExlIE1vYWwKPiBXZXN0ZXJuIERpZ2l0YWwgUmVzZWFy
Y2gKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
