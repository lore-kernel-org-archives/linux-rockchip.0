Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDBBBD2502F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jan 2026 13:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRnndxmPN8Ku1BKSMVcU32DFkLTbSNpADWAmyhOLIlI=; b=V4OaeO4D1IEolc
	DHNPKhqakh7PCSpGovrKQejiwWKHlXl+kQG3yC8cZ7v2cCbU620ch+32YMsrHz8SWgvwFhA2OW6tY
	4kGy5+PGPcBZzLBij44V3Oa5I2VQklsXM4f6olfeL6o1k7nuf527t0e64roiKwmApX/EJDqdX/4LP
	adNpGLyXMamkHq0qzIDqgwCLGsrWW1EcNXdkBzguv9+6COSUbuYQyMYQOdzMzch5uMac+QyzW9VSC
	Yny+0sLvUufZiD4oFd4A51kDixZtkpr9ne48aTru92YMj9JLLvY4T7W+xdDKpcZU27Y5DFqME9KUf
	AxxNQXt4OkSH1P90HODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vevX0-00000004Fzz-20oG;
	Sun, 11 Jan 2026 13:30:58 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vevWw-00000004FzK-2JdL
	for linux-rockchip@lists.infradead.org;
	Sun, 11 Jan 2026 13:30:57 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-432755545fcso3218940f8f.1
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Jan 2026 05:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768138252; x=1768743052; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ckBPY9BcGf6vo2tq6j7tWFYJrA0tQ0sNu7QHFsHPJ+Y=;
        b=acPq0GxjkSj1EiTcH7ieC8YE2nSO/eLX6BbSdrCpXOv9s/1yfSFcAOBNfpUTbGURT0
         3a4Nj1OoxkUSH/TrK8HmCVLloknMZs3ADcykIhkc4VO29+YLWSnr8OZcA+WmBf7HhyvG
         VTJ3Nxm+qAWe7tFaoZBMIsaWjpzgkvvv/PFd1OAx6THkGFJd0k4wzsftkQtN3Q389UUF
         pzbma+CLpv/69Khlm3jZ8qUGpyM8rS8tWlspkfHhqPHwO97jFmhEO8Iq6C0AgY1gyvHF
         aE1h/KY4gxnoIw0Hk3xha2/WWNUR2vehGNajH09w+noZOQE8SyuvGLjhsbEWqNcaavf+
         7J7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768138252; x=1768743052;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ckBPY9BcGf6vo2tq6j7tWFYJrA0tQ0sNu7QHFsHPJ+Y=;
        b=IloDDqBHxQuKEXjy0kmfhvDMreHAJpmnl9oe3ZUidLaCugCnX+TiqUxnatCeyHasiO
         W4XG2BILk0KOI+wqXyvZNzAXcSRTKwqWji5pMRW0TjhyunajKeVyST+iPh4N5p/TKPX9
         GnLYjzVl9PvgKzRde+dd/SexYgL4wBppIzDrF8GjE/hL7OIn8H5wtYk6oQXrOi7X+qKB
         sM+jgEoO30vTLAKNpnEZ8132OC00eabYSR7tQFUoRidOJiw0Dk1rydwxSCXdCLDA9P1O
         kd+eFeCw8qM6OwqNC15LC66kt7v9ajawnzCrUO4h+7mIcWOyqqHz8bLD3uhxcL4/RfDE
         WCfg==
X-Forwarded-Encrypted: i=1; AJvYcCWpsw6UT689ZBws4UH1WHcJKsgddK96fTW5JgnyvVPP8UO5O59gSlQA36KVdWSqLesIXJBikgZsNSdhA3erDQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5lH6DwpB4dE8tlqzimy4Lej8rXJGwPEHW+QYth/xP/6rQ+RUf
	qde71LrPnguCItv/uKmdsESQC4cheZPrrqr5vgjqKKbRK0ge2YTO9G1z
X-Gm-Gg: AY/fxX73w3oPd6EVM8SPVlJKOfx/iO5XhBjb8e3PlM7S1u/thcJEiMZmoklKMldrlvp
	Bc2oZB1Xykj9u+8VN7oJ27j55ERn9XFIeRKeJQsz1Muq20lfTJdRnrBRK45d5qT3hfDIHYlvQOs
	UbZh+VENwQqfzuNs9fhsUguRXbuqwpUL0MwPlO45YTHSv6yNqmba0hzzGyjyCV6MR9xDz9kPezR
	nNfdNz+l4z+ztGKZNdUKYK5lIvC8B2LK4D/C1wW6QnSkCuHBrRt2SXdlE9KoZkwEZ6z6kgZxpq8
	HZ5Pm9myenYx/DoFH2K+JpTT3NocGLNzXwE8GLaBuw0COjFU6EZAVvd0zy8Hy7JgeI1kZ1P92qi
	WwLNBCf4dA8FrXzGV4ZuJXdfcbTxSjl9C2Zjp+r2kQmoXhoWXwFik4fU9+2WRdXOfX5k1vLh0nZ
	NzKGkZ5LMP4HmJ0pq8n1kKrmZRsSn8g2kMyBO08oOcnsBOMkVFwqulcvTNiUV5qi+Z2ifGue1Xs
	LEus5Bxww==
X-Google-Smtp-Source: AGHT+IFe9wWxjVQpeDITMzmRPx8fkixrUGFpGMFziE84e6O7knxtRUc2L2nWcJa5eYoiJK5xomAUhw==
X-Received: by 2002:a05:6000:401e:b0:431:488:b9b4 with SMTP id ffacd0b85a97d-432c36328d0mr15749317f8f.17.1768138251654;
        Sun, 11 Jan 2026 05:30:51 -0800 (PST)
Received: from smtpclient.apple (static.253.36.98.91.clients.your-server.de. [91.98.36.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5feaf8sm33320121f8f.39.2026.01.11.05.30.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Jan 2026 05:30:51 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Subject: Re: [PATCH v3 2/3] media: rkvdec: Add support for the VDPU346 variant
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <DFL5TY0QQNMN.1RS04UM9D1V8S@cknow-tech.com>
Date: Sun, 11 Jan 2026 17:30:35 +0400
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 =?utf-8?Q?Olivier_Cr=C3=AAte?= <olivier.crete@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Dang Huynh <dang.huynh@mainlining.org>
Message-Id: <E21F5FD9-AEBA-490F-A9DF-8E9BEF161763@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
 <20260110053727.2295260-3-christianshewitt@gmail.com>
 <DFL5TY0QQNMN.1RS04UM9D1V8S@cknow-tech.com>
To: Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: Apple Mail (2.3826.700.81.1.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_053054_618786_0F1D8320 
X-CRM114-Status: GOOD (  18.60  )
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

PiBPbiAxMCBKYW4gMjAyNiwgYXQgMTE6MzXigK9wbSwgRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVy
aWtAY2tub3ctdGVjaC5jb20+IHdyb3RlOgo+IAo+IEhpIENocmlzdGlhbiwKPiAKPiBPbiBTYXQg
SmFuIDEwLCAyMDI2IGF0IDY6MzcgQU0gQ0VULCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+PiBW
RFBVMzQ2IGlzIHNpbWlsYXIgdG8gVkRQVTM4MSBidXQgd2l0aCBhIHNpbmdsZSBjb3JlIGFuZCBs
aW1pdGVkCj4+IHRvIDRLNjAgbWVkaWEuIEl0IGlzIGFsc28gbGltaXRlZCB0byBIMjY0IEw1LjEg
YW5kIG9taXRzIEFWMSBhbmQKPj4gQVZTMiBjYXBhYmlsaXRpZXMuIFZEUFUzNDYgaXMgdXNlZCB3
aXRoIFJLMzU2NiBhbmQgUkszNTY4Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEhl
d2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+Cj4+IFJldmlld2VkLWJ5OiBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4+IFRlc3RlZC1ieTog
RGFuZyBIdXluaCA8ZGFuZy5odXluaEBtYWlubGluaW5nLm9yZz4gIyBQaW5ldGFiMgo+PiAtLS0K
Pj4gLi4uL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYyAgIHwgMTAzICsr
KysrKysrKysrKysrKysrKwo+PiAxIGZpbGUgY2hhbmdlZCwgMTAzIGluc2VydGlvbnMoKykKPj4g
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9y
a3ZkZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5j
Cj4+IGluZGV4IGE1Y2Y2ZjMyNDBmOC4uNmU0OWIxMjlkMTFmIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYwo+PiArKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYwo+PiBAQCAtMjM2LDYg
KzIzNiw2MiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jdHJscyBya3ZkZWNfaGV2Y19j
dHJscyA9IHsKPj4gLm51bV9jdHJscyA9IEFSUkFZX1NJWkUocmt2ZGVjX2hldmNfY3RybF9kZXNj
cyksCj4+IH07Cj4+IAo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNfY3RybF9kZXNjIHZk
cHUzNDZfaGV2Y19jdHJsX2Rlc2NzW10gPSB7Cj4+ICsgewo+PiArIC5jZmcuaWQgPSBWNEwyX0NJ
RF9TVEFURUxFU1NfSEVWQ19ERUNPREVfUEFSQU1TLAo+PiArIH0sCj4+ICsgewo+PiArIC5jZmcu
aWQgPSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TUFMsCj4+ICsgLmNmZy5vcHMgPSAmcmt2ZGVj
X2N0cmxfb3BzLAo+PiArIH0sCj4+ICsgewo+PiArIC5jZmcuaWQgPSBWNEwyX0NJRF9TVEFURUxF
U1NfSEVWQ19QUFMsCj4+ICsgfSwKPj4gKyB7Cj4+ICsgLmNmZy5pZCA9IFY0TDJfQ0lEX1NUQVRF
TEVTU19IRVZDX1NDQUxJTkdfTUFUUklYLAo+PiArIH0sCj4+ICsgewo+PiArIC5jZmcuaWQgPSBW
NEwyX0NJRF9TVEFURUxFU1NfSEVWQ19ERUNPREVfTU9ERSwKPj4gKyAuY2ZnLm1pbiA9IFY0TDJf
U1RBVEVMRVNTX0hFVkNfREVDT0RFX01PREVfRlJBTUVfQkFTRUQsCj4+ICsgLmNmZy5tYXggPSBW
NEwyX1NUQVRFTEVTU19IRVZDX0RFQ09ERV9NT0RFX0ZSQU1FX0JBU0VELAo+PiArIC5jZmcuZGVm
ID0gVjRMMl9TVEFURUxFU1NfSEVWQ19ERUNPREVfTU9ERV9GUkFNRV9CQVNFRCwKPj4gKyB9LAo+
PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfU1RBUlRfQ09ERSwK
Pj4gKyAuY2ZnLm1pbiA9IFY0TDJfU1RBVEVMRVNTX0hFVkNfU1RBUlRfQ09ERV9BTk5FWF9CLAo+
PiArIC5jZmcuZGVmID0gVjRMMl9TVEFURUxFU1NfSEVWQ19TVEFSVF9DT0RFX0FOTkVYX0IsCj4+
ICsgLmNmZy5tYXggPSBWNEwyX1NUQVRFTEVTU19IRVZDX1NUQVJUX0NPREVfQU5ORVhfQiwKPj4g
KyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfTVBFR19WSURFT19IRVZDX1BST0ZJ
TEUsCj4+ICsgLmNmZy5taW4gPSBWNEwyX01QRUdfVklERU9fSEVWQ19QUk9GSUxFX01BSU4sCj4+
ICsgLmNmZy5tYXggPSBWNEwyX01QRUdfVklERU9fSEVWQ19QUk9GSUxFX01BSU5fMTAsCj4+ICsg
LmNmZy5tZW51X3NraXBfbWFzayA9Cj4+ICsgQklUKFY0TDJfTVBFR19WSURFT19IRVZDX1BST0ZJ
TEVfTUFJTl9TVElMTF9QSUNUVVJFKSwKPj4gKyAuY2ZnLmRlZiA9IFY0TDJfTVBFR19WSURFT19I
RVZDX1BST0ZJTEVfTUFJTiwKPj4gKyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURf
TVBFR19WSURFT19IRVZDX0xFVkVMLAo+PiArIC5jZmcubWluID0gVjRMMl9NUEVHX1ZJREVPX0hF
VkNfTEVWRUxfMSwKPj4gKyAuY2ZnLm1heCA9IFY0TDJfTVBFR19WSURFT19IRVZDX0xFVkVMXzVf
MSwKPj4gKyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNf
RVhUX1NQU19TVF9SUFMsCj4+ICsgLmNmZy5vcHMgPSAmcmt2ZGVjX2N0cmxfb3BzLAo+PiArIC5j
ZmcuZGltcyA9IHsgNjUgfSwKPj4gKyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURf
U1RBVEVMRVNTX0hFVkNfRVhUX1NQU19MVF9SUFMsCj4+ICsgLmNmZy5vcHMgPSAmcmt2ZGVjX2N0
cmxfb3BzLAo+PiArIC5jZmcuZGltcyA9IHsgNjUgfSwKPj4gKyB9LAo+PiArfTsKPj4gKwo+PiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNfY3RybHMgdmRwdTM0Nl9oZXZjX2N0cmxzID0gewo+
PiArIC5jdHJscyA9IHZkcHUzNDZfaGV2Y19jdHJsX2Rlc2NzLAo+PiArIC5udW1fY3RybHMgPSBB
UlJBWV9TSVpFKHZkcHUzNDZfaGV2Y19jdHJsX2Rlc2NzKSwKPj4gK307Cj4+ICsKPj4gc3RhdGlj
IGNvbnN0IHN0cnVjdCBya3ZkZWNfY3RybF9kZXNjIHZkcHUzOHhfaGV2Y19jdHJsX2Rlc2NzW10g
PSB7Cj4+IHsKPj4gLmNmZy5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX0RFQ09ERV9QQVJB
TVMsCj4+IEBAIC00NjMsNiArNTE5LDQxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcmt2ZGVjX2Nv
ZGVkX2ZtdF9kZXNjIHJrMzI4OF9jb2RlZF9mbXRzW10gPSB7Cj4+IH0KPj4gfTsKPj4gCj4+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyB2ZHB1MzQ2X2NvZGVkX2Zt
dHNbXSA9IHsKPj4gKyB7Cj4+ICsgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9IRVZDX1NMSUNFLAo+
PiArIC5mcm1zaXplID0gewo+PiArIC5taW5fd2lkdGggPSA2NCwKPj4gKyAubWF4X3dpZHRoID0g
NDA5NiwKPj4gKyAuc3RlcF93aWR0aCA9IDY0LAo+PiArIC5taW5faGVpZ2h0ID0gNjQsCj4+ICsg
Lm1heF9oZWlnaHQgPSAyMzA0LAo+PiArIC5zdGVwX2hlaWdodCA9IDE2LAo+PiArIH0sCj4+ICsg
LmN0cmxzID0gJnZkcHUzNDZfaGV2Y19jdHJscywKPj4gKyAub3BzID0gJnJrdmRlY192ZHB1Mzgx
X2hldmNfZm10X29wcywKPj4gKyAubnVtX2RlY29kZWRfZm10cyA9IEFSUkFZX1NJWkUocmt2ZGVj
X2hldmNfZGVjb2RlZF9mbXRzKSwKPj4gKyAuZGVjb2RlZF9mbXRzID0gcmt2ZGVjX2hldmNfZGVj
b2RlZF9mbXRzLAo+PiArIC5zdWJzeXN0ZW1fZmxhZ3MgPSBWQjJfVjRMMl9GTF9TVVBQT1JUU19N
Mk1fSE9MRF9DQVBUVVJFX0JVRiwKPj4gKyB9LAo+PiArIHsKPj4gKyAuZm91cmNjID0gVjRMMl9Q
SVhfRk1UX0gyNjRfU0xJQ0UsCj4+ICsgLmZybXNpemUgPSB7Cj4+ICsgLm1pbl93aWR0aCA9IDY0
LAo+PiArIC5tYXhfd2lkdGggPSAgNDA5NiwKPj4gKyAuc3RlcF93aWR0aCA9IDY0LAo+PiArIC5t
aW5faGVpZ2h0ID0gNjQsCj4+ICsgLm1heF9oZWlnaHQgPSAgMjMwNCwKPj4gKyAuc3RlcF9oZWln
aHQgPSAxNiwKPj4gKyB9LAo+PiArIC5jdHJscyA9ICZya3ZkZWNfaDI2NF9jdHJscywKPj4gKyAu
b3BzID0gJnJrdmRlY192ZHB1MzgxX2gyNjRfZm10X29wcywKPj4gKyAubnVtX2RlY29kZWRfZm10
cyA9IEFSUkFZX1NJWkUocmt2ZGVjX2gyNjRfZGVjb2RlZF9mbXRzKSwKPj4gKyAuZGVjb2RlZF9m
bXRzID0gcmt2ZGVjX2gyNjRfZGVjb2RlZF9mbXRzLAo+PiArIC5zdWJzeXN0ZW1fZmxhZ3MgPSBW
QjJfVjRMMl9GTF9TVVBQT1JUU19NMk1fSE9MRF9DQVBUVVJFX0JVRiwKPj4gKyB9LAo+PiArfTsK
Pj4gKwo+PiBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyB2ZHB1Mzgx
X2NvZGVkX2ZtdHNbXSA9IHsKPj4gewo+PiAuZm91cmNjID0gVjRMMl9QSVhfRk1UX0hFVkNfU0xJ
Q0UsCj4+IEBAIC0xNjU3LDYgKzE3NDgsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNf
dmFyaWFudF9vcHMgdmRwdTM4MV92YXJpYW50X29wcyA9IHsKPj4gLmZsYXR0ZW5fbWF0cmljZXMg
PSB0cmFuc3Bvc2VfYW5kX2ZsYXR0ZW5fbWF0cmljZXMsCj4+IH07Cj4+IAo+PiArc3RhdGljIGNv
bnN0IHN0cnVjdCBya3ZkZWNfdmFyaWFudCB2ZHB1MzQ2X3ZhcmlhbnQgPSB7Cj4+ICsgLmNvZGVk
X2ZtdHMgPSB2ZHB1MzQ2X2NvZGVkX2ZtdHMsCj4+ICsgLm51bV9jb2RlZF9mbXRzID0gQVJSQVlf
U0laRSh2ZHB1MzQ2X2NvZGVkX2ZtdHMpLAo+PiArIC5yY2Jfc2l6ZXMgPSB2ZHB1MzgxX3JjYl9z
aXplcywKPiAKPiBBRkFJQ1QgdGhpcyBpcyBub3QgY29ycmVjdCwgdGhlIHJjYl9zaXplcyBhcmUg
ZGlmZmVyZW50IGZvciB2ZHB1MzQ2IHZzCj4gdmRwdTM4MS4gV2hpbGUgZm9yIHZkcHUzODEgdGhl
IHNpemVzIGFyZSB0aGUgc2FtZSBhY3Jvc3MgY29kZWNzLCB0aGV5Cj4gdmFyeSBmb3IgdmRwdTM0
Ni4gQW5kIHZkcHUzNDYgZG9lcyBub3QgaGF2ZSAnU1RSTUQgUm93JywgJ1RyYW5zZCBSb3cnCj4g
YW5kICdUcmFuc2QgY29sJy4KPiAKPiBGb3IgUkszNTg4L3ZkcHUzODEgaXQgaXMgZGVmaW5lZCBp
biBSSzM1ODggVFJNIFYxLjAgUGFydDEgaW4KPiBwYXJhZ3JhcGggNS40LjQuMyBpbiAnVGFibGUg
NS0xMyBSb3cgb3IgQ29sIGJ1ZmZlciBzaXplIHJlcXVpcmVkJyBvbgo+IHBhZ2UgMzgxLgo+IAo+
IEZvciBSSzM1NjgvdmRwdTM0NiBpcyBpcyBkZWZpbmVzIGluIFJLMzU2OCBUUk0gVjEuMSBQYXJ0
MiBpbgo+IHBhcmFncmFwaCAxMC40LjggaW4gJ1RhYmxlIDEwLTkgUm93IG9yIENvbCBidWZmZXIg
c2l6ZSByZXF1aXJlZCcgb24gcGFnZQo+IDQ3NCBhbmQgNDc1LgoKVGhpcyBpcyB3aGF0IEnigJlt
IGhpbnRpbmcvcmVmZXJyaW5nIHRvIGluIHRoZSBjb3Zlci1sZXR0ZXIuIEhvdwp0byBjb3JyZWN0
bHkgaGFuZGxlIHRoZSBkaWZmZXJlbmNlcyBpbiBjb2RlIGlzIGN1cnJlbnRseSBiZXlvbmQKbXkg
bjAwYiBsZXZlbCBjb21wcmVoZW5zaW9uIG9mIGMgYW5kIGNvZGluZyBza2lsbHMuIEnigJlsbCBu
ZWVkIHRvCmFzayB0aGUgYXVkaWVuY2UgZm9yIHNvbWUgYXNzaXN0YW5jZSBhbmQgY29hY2hpbmcg
OikKCkNocmlzdGlhbgoKPj4gKyAubnVtX3JjYl9zaXplcyA9IEFSUkFZX1NJWkUodmRwdTM4MV9y
Y2Jfc2l6ZXMpLAo+PiArIC5vcHMgPSAmdmRwdTM4MV92YXJpYW50X29wcywKPj4gK307Cj4+ICsK
Pj4gc3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNfdmFyaWFudCB2ZHB1MzgxX3ZhcmlhbnQgPSB7
Cj4+IC5jb2RlZF9mbXRzID0gdmRwdTM4MV9jb2RlZF9mbXRzLAo+PiAubnVtX2NvZGVkX2ZtdHMg
PSBBUlJBWV9TSVpFKHZkcHUzODFfY29kZWRfZm10cyksCj4+IEBAIC0xNzA1LDYgKzE4MDQsMTAg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2Zfcmt2ZGVjX21hdGNoW10gPSB7
Cj4+IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS12ZGVjIiwKPj4gLmRhdGEgPSAmcmsz
Mzk5X3JrdmRlY192YXJpYW50LAo+PiB9LAo+PiArIHsKPj4gKyAuY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxyazM1NjgtdmRlYyIsCj4+ICsgLmRhdGEgPSAmdmRwdTM0Nl92YXJpYW50LAo+PiArIH0s
Cj4+IHsKPj4gLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXZkZWMiLAo+PiAuZGF0YSA9
ICZ2ZHB1MzgxX3ZhcmlhbnQsCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
