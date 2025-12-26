Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9D46E8FDA6
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 12:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHpWqxS+1TufoPGtSr5hRqygV7A2xEQyK+ZVQIzGRfc=; b=sZNZ7FV2+tfs+/
	4QJhQtbFyeqU9MGcb0T11CsTznolYTWDz+FGymBwEsTr3FVb4DEOfdXLcAssdWLQ20MVTHHd33v5z
	pEnY8VIEq7075nncS4jQANCUZcRSWNBBUx1ahIOEvGALW/NtFtTC7uOoNdD7+/Y8YQEyXzLGj3I7q
	z9Qztxd1Q+Jvb+j7ILBBa5u2kF1lV3z9K7EzaqB3R6QuCx6UzesowyzNTIw6PXP6+sLhNeoOjmsc8
	tgkfoI0S05pE88VGsVDteYtuKTTDEQnaox1d47hFa/2f3ojqN9tHm0zWYXOreaWEkE3+7SkvSEvdX
	VMG9oqC6BD5qc5G3Ptqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ6sq-00000001Av0-0OJC;
	Fri, 26 Dec 2025 12:25:28 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ6so-00000001AuM-0TfS
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Dec 2025 12:25:27 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso73391725e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 04:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766751924; x=1767356724; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x/QWZMgTcROcYFJ0cFP0webMTrmmuMu3SFDdjIFr7Xg=;
        b=SfSxpPHIEKgzAQDl/WAVY8Qyy/Zj+Fs/6T2BXb3HDaBEE+UieXtAtMhjrupiVXi4X6
         YNCAafWGwZboZGL1faTkA5ejR00VaxMqjcisK0hGfqWfJB3jzfqfhvSfKv6grrrOVibn
         YJ9V/UPauMxfCdOhQzJ+FSGx6lGPxfcXo3Ji5SHVi8/DxPvNMduSjEb5tu0MyBaHzJtK
         psS2WnbO6ecFBNF/yfwujLouBDbn4gB1m21CINkH+RBsrLkos1Qz00tWozrBuwe3XWk1
         De6Sf6awe3SmTPoku+Pemv9HoUAEtHAr7kLuo+znrJXo42PThIZVpHGDxDvQ4N6PZMo3
         TZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766751924; x=1767356724;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x/QWZMgTcROcYFJ0cFP0webMTrmmuMu3SFDdjIFr7Xg=;
        b=tP/O0YSYh41G2fZ5eRhixc8HjeZM0LmXecd05DfWPt88aMtfKlDSBXcOJlNtp49L9W
         4tuUS1+3a9lzKh3nOiFvBzgqUTYY/5XZbiJeRZTdk6+Uj0hegASeUe6SFkjwIRDSR1tS
         b6QkEURomaKhvM/0uhbqMX86lRBM8xp9ZOOdMFdrfLzUT9irxZa43Ye/VIRL55OQoS/F
         JhDXCXEjCxq7gHDzSY5ikEnshdfMV0frcplDXjgXaEiZYLdmEyr2n64FPUx1JC04NLlt
         J8olP8DR1pZrDrOwPYRNdWzyy2hC1VHxMKOuAS9/+Wi8fwtB3QPN9jU9vaRoP/x8uDsz
         X2WQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMyqrKqXjzLGhu4BNSQ4b4iRXtexWS3ZqdPoUYUD0F/Y121X9BysTUt51+4FJJ/fphw2gEKzHBJjv9t/btjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YznsJRaddXNbfRHFzbLPaNzTkcdBLYbshv/tyVwpt0OK+/sH8yn
	TXfYuipVXZjM4e4VbvbDwtrkvJ9zJUv6F0bUMbWrOt19OQI7IlHmrg2l
X-Gm-Gg: AY/fxX4OObesJl4u52qx69Aj5QcPHQPD7tx7k8CgJ5qXDTjsOD8Qvg4+lZAxv3KJKuZ
	ijoN0oOv0IilmBPwKOR3dkHDIqNi181Cc05GXSfOizUZC86hBen6BTbxMRX0iQikTmBOxXfXHvk
	mIUU/1VjJM6mNtQrclMD1HQYG6aX0XM3C2RlnBBtN4IqAHEfTwJsM+3Lz0LkAE5vGpgshKsYH7Z
	qq/8Lnee14PVl8X4SkNAJBsxBG25mTz4hGCs7V0KYH8y4NjNyVCYFBKQY6eTRLGgZss00MJbvoD
	r6pB0SuunebmixQVtF+d3V/Q5axnuMg/39YT6BSW4WOwa9JE772jKOMaOKpzPVeFAyRCcL3Qw7C
	pasCz41Ljfj/E3okaWpEfNAf+x15fzoZMQOnPhK8EW8WobE1Z6yFDXdrS8O7MCIZXFTG2KiWqWS
	C7GjWdLGwMj4iBMkEUMIQ1d4tDCgPd2NFomLXW3x8lHVs4khHHJdyUcpJ295L5B+Ppi2BmwiG8L
	SdxE666BA==
X-Google-Smtp-Source: AGHT+IGc8Z2MAoLbOks33fyQFWGK5GI9Gp1WejsRvglw//425ZHkxFEhT7LmB7wnFeheTO44I6eLuA==
X-Received: by 2002:a05:600c:620d:b0:47b:da85:b9ef with SMTP id 5b1f17b1804b1-47d19569c23mr295125695e9.16.1766751924042;
        Fri, 26 Dec 2025 04:25:24 -0800 (PST)
Received: from smtpclient.apple (static.253.36.98.91.clients.your-server.de. [91.98.36.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82feasm45346320f8f.24.2025.12.26.04.25.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Dec 2025 04:25:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Subject: Re: [PATCH v2 2/3] media: rkvdec: Add support for the VDPU346 variant
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <DF84QZ0YBLY8.2DYCSM2EQIF5@cknow-tech.com>
Date: Fri, 26 Dec 2025 16:25:09 +0400
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 Nicolas Dufresne <nicolas.collabora@collabora.com>,
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
 linux-kernel@vger.kernel.org
Message-Id: <71EA9FB8-83DB-4785-86C1-2E6BA9C739D9@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
 <20251226113140.573759-3-christianshewitt@gmail.com>
 <DF84QZ0YBLY8.2DYCSM2EQIF5@cknow-tech.com>
To: Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: Apple Mail (2.3826.700.81.1.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_042526_208560_E5AF508F 
X-CRM114-Status: GOOD (  23.28  )
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

PiBPbiAyNiBEZWMgMjAyNSwgYXQgNDowMOKAr3BtLCBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJp
a0Bja25vdy10ZWNoLmNvbT4gd3JvdGU6Cj4gCj4gSGkgQ2hyaXN0aWFuLAo+IAo+IE9uIEZyaSBE
ZWMgMjYsIDIwMjUgYXQgMTI6MzEgUE0gQ0VULCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+PiBW
RFBVMzQ2IGlzIHNpbWlsYXIgdG8gVkRQVTM4MSBidXQgd2l0aCBhIHNpbmdsZSBjb3JlIGFuZCBs
aW1pdGVkCj4+IHRvIDRLNjAgbWVkaWEuIEl0IGlzIGFsc28gbGltaXRlZCB0byBIMjY0IEw1LjEg
YW5kIG9taXRzIEFWMSBhbmQKPj4gQVZTMiBjYXBhYmlsaXRpZXMuIFZEUFUzNDYgaXMgdXNlZCB3
aXRoIFJLMzU2NiBhbmQgUkszNTY4Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEhl
d2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+Cj4+IFJldmlld2VkLWJ5OiBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzLmNvbGxhYm9yYUBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gLi4u
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYyAgIHwgMTAzICsrKysrKysr
KysrKysrKysrKwo+PiAxIGZpbGUgY2hhbmdlZCwgMTAzIGluc2VydGlvbnMoKykKPj4gCj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMu
YyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jCj4+IGlu
ZGV4IGU1NDcwNTdkYzc1Zi4uNmIzOWU5OWQ4YThiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYwo+PiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYwo+PiBAQCAtMjM2LDYgKzIzNiw2
MiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jdHJscyBya3ZkZWNfaGV2Y19jdHJscyA9
IHsKPj4gLm51bV9jdHJscyA9IEFSUkFZX1NJWkUocmt2ZGVjX2hldmNfY3RybF9kZXNjcyksCj4+
IH07Cj4+IAo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNfY3RybF9kZXNjIHZkcHUzNDZf
aGV2Y19jdHJsX2Rlc2NzW10gPSB7Cj4+ICsgewo+PiArIC5jZmcuaWQgPSBWNEwyX0NJRF9TVEFU
RUxFU1NfSEVWQ19ERUNPREVfUEFSQU1TLAo+PiArIH0sCj4+ICsgewo+PiArIC5jZmcuaWQgPSBW
NEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TUFMsCj4+ICsgLmNmZy5vcHMgPSAmcmt2ZGVjX2N0cmxf
b3BzLAo+PiArIH0sCj4+ICsgewo+PiArIC5jZmcuaWQgPSBWNEwyX0NJRF9TVEFURUxFU1NfSEVW
Q19QUFMsCj4+ICsgfSwKPj4gKyB7Cj4+ICsgLmNmZy5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19I
RVZDX1NDQUxJTkdfTUFUUklYLAo+PiArIH0sCj4+ICsgewo+PiArIC5jZmcuaWQgPSBWNEwyX0NJ
RF9TVEFURUxFU1NfSEVWQ19ERUNPREVfTU9ERSwKPj4gKyAuY2ZnLm1pbiA9IFY0TDJfU1RBVEVM
RVNTX0hFVkNfREVDT0RFX01PREVfRlJBTUVfQkFTRUQsCj4+ICsgLmNmZy5tYXggPSBWNEwyX1NU
QVRFTEVTU19IRVZDX0RFQ09ERV9NT0RFX0ZSQU1FX0JBU0VELAo+PiArIC5jZmcuZGVmID0gVjRM
Ml9TVEFURUxFU1NfSEVWQ19ERUNPREVfTU9ERV9GUkFNRV9CQVNFRCwKPj4gKyB9LAo+PiArIHsK
Pj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfU1RBUlRfQ09ERSwKPj4gKyAu
Y2ZnLm1pbiA9IFY0TDJfU1RBVEVMRVNTX0hFVkNfU1RBUlRfQ09ERV9BTk5FWF9CLAo+PiArIC5j
ZmcuZGVmID0gVjRMMl9TVEFURUxFU1NfSEVWQ19TVEFSVF9DT0RFX0FOTkVYX0IsCj4+ICsgLmNm
Zy5tYXggPSBWNEwyX1NUQVRFTEVTU19IRVZDX1NUQVJUX0NPREVfQU5ORVhfQiwKPj4gKyB9LAo+
PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfTVBFR19WSURFT19IRVZDX1BST0ZJTEUsCj4+
ICsgLmNmZy5taW4gPSBWNEwyX01QRUdfVklERU9fSEVWQ19QUk9GSUxFX01BSU4sCj4+ICsgLmNm
Zy5tYXggPSBWNEwyX01QRUdfVklERU9fSEVWQ19QUk9GSUxFX01BSU5fMTAsCj4+ICsgLmNmZy5t
ZW51X3NraXBfbWFzayA9Cj4+ICsgQklUKFY0TDJfTVBFR19WSURFT19IRVZDX1BST0ZJTEVfTUFJ
Tl9TVElMTF9QSUNUVVJFKSwKPj4gKyAuY2ZnLmRlZiA9IFY0TDJfTVBFR19WSURFT19IRVZDX1BS
T0ZJTEVfTUFJTiwKPj4gKyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfTVBFR19W
SURFT19IRVZDX0xFVkVMLAo+PiArIC5jZmcubWluID0gVjRMMl9NUEVHX1ZJREVPX0hFVkNfTEVW
RUxfMSwKPj4gKyAuY2ZnLm1heCA9IFY0TDJfTVBFR19WSURFT19IRVZDX0xFVkVMXzVfMSwKPj4g
KyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfRVhUX1NQ
U19TVF9SUFMsCj4+ICsgLmNmZy5vcHMgPSAmcmt2ZGVjX2N0cmxfb3BzLAo+PiArIC5jZmcuZGlt
cyA9IHsgNjUgfSwKPj4gKyB9LAo+PiArIHsKPj4gKyAuY2ZnLmlkID0gVjRMMl9DSURfU1RBVEVM
RVNTX0hFVkNfRVhUX1NQU19MVF9SUFMsCj4+ICsgLmNmZy5vcHMgPSAmcmt2ZGVjX2N0cmxfb3Bz
LAo+PiArIC5jZmcuZGltcyA9IHsgNjUgfSwKPj4gKyB9LAo+PiArfTsKPj4gKwo+PiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBya3ZkZWNfY3RybHMgdmRwdTM0Nl9oZXZjX2N0cmxzID0gewo+PiArIC5j
dHJscyA9IHZkcHUzNDZfaGV2Y19jdHJsX2Rlc2NzLAo+PiArIC5udW1fY3RybHMgPSBBUlJBWV9T
SVpFKHZkcHUzNDZfaGV2Y19jdHJsX2Rlc2NzKSwKPj4gK307Cj4+ICsKPj4gc3RhdGljIGNvbnN0
IHN0cnVjdCBya3ZkZWNfY3RybF9kZXNjIHZkcHUzOHhfaGV2Y19jdHJsX2Rlc2NzW10gPSB7Cj4+
IHsKPj4gLmNmZy5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX0RFQ09ERV9QQVJBTVMsCj4+
IEBAIC00NjMsNiArNTE5LDQxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2Zt
dF9kZXNjIHJrMzI4OF9jb2RlZF9mbXRzW10gPSB7Cj4+IH0KPj4gfTsKPj4gCj4+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyB2ZHB1MzQ2X2NvZGVkX2ZtdHNbXSA9
IHsKPj4gKyB7Cj4+ICsgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9IRVZDX1NMSUNFLAo+PiArIC5m
cm1zaXplID0gewo+PiArIC5taW5fd2lkdGggPSA2NCwKPj4gKyAubWF4X3dpZHRoID0gNjU0NzIs
Cj4gCj4gVGhpcyBzaG91bGQgYmUgNDA5NiBhY2NvcmRpbmcgdG8gcGFnZSA0Njkgb2YgUkszNTY4
IFRSTSBQYXJ0IDIgLi4uCj4gCj4+ICsgLnN0ZXBfd2lkdGggPSA2NCwKPj4gKyAubWluX2hlaWdo
dCA9IDY0LAo+PiArIC5tYXhfaGVpZ2h0ID0gNjU0NzIsCj4gCj4gLi4uIGFuZCB0aGlzIDIzMDQu
Cj4gCj4+ICsgLnN0ZXBfaGVpZ2h0ID0gMTYsCj4+ICsgfSwKPj4gKyAuY3RybHMgPSAmdmRwdTM0
Nl9oZXZjX2N0cmxzLAo+PiArIC5vcHMgPSAmcmt2ZGVjX3ZkcHUzODFfaGV2Y19mbXRfb3BzLAo+
PiArIC5udW1fZGVjb2RlZF9mbXRzID0gQVJSQVlfU0laRShya3ZkZWNfaGV2Y19kZWNvZGVkX2Zt
dHMpLAo+PiArIC5kZWNvZGVkX2ZtdHMgPSBya3ZkZWNfaGV2Y19kZWNvZGVkX2ZtdHMsCj4+ICsg
LnN1YnN5c3RlbV9mbGFncyA9IFZCMl9WNEwyX0ZMX1NVUFBPUlRTX00yTV9IT0xEX0NBUFRVUkVf
QlVGLAo+PiArIH0sCj4+ICsgewo+PiArIC5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfSDI2NF9TTElD
RSwKPj4gKyAuZnJtc2l6ZSA9IHsKPj4gKyAubWluX3dpZHRoID0gNjQsCj4+ICsgLm1heF93aWR0
aCA9ICA2NTUyMCwKPiAKPiBUaGlzIHRvbyBzaG91bGQgYmUgNDA5NiBhY2NvcmRpbmcgdG8gcGFn
ZSA0Njkgb2YgUkszNTY4IFRSTSBQYXJ0IDIgLi4uCj4gCj4+ICsgLnN0ZXBfd2lkdGggPSA2NCwK
Pj4gKyAubWluX2hlaWdodCA9IDY0LAo+PiArIC5tYXhfaGVpZ2h0ID0gIDY1NTIwLAo+IAo+IC4u
LiBhbmQgdGhpcyAyMzA0Lgo+IAo+IEkgZ3Vlc3MgdGhpcyBhbHNvIGV4cGxhaW5zIHRoZSAnZ3Jl
ZW4gaW1hZ2VzJyBOaWNvbGFzIG5vdGljZWQuCgpRdWl0ZSBwcm9iYWJseS4gSeKAmXZlIHBpY2tl
ZCB0aGUgYWJvdmUgY2hhbmdlcyBpbnRvIG15IHdvcmtpbmcgdHJlZQooZm9yIHRob3NlIGZvbGxv
d2luZyBpdCkgYW5kIHdpbGwgc2VuZCBhIHYzIHNlcmllcyBpbiByZXNwb25zZSB0bwp0aGUgbmV4
dCByZXZpc2lvbiBvZiBEZXRsZXbigJlzIHBhdGNoZXMuCgo+ICsgLnN0ZXBfaGVpZ2h0ID0gMTYs
Cj4+ICsgfSwKPj4gKyAuY3RybHMgPSAmcmt2ZGVjX2gyNjRfY3RybHMsCj4+ICsgLm9wcyA9ICZy
a3ZkZWNfdmRwdTM4MV9oMjY0X2ZtdF9vcHMsCj4+ICsgLm51bV9kZWNvZGVkX2ZtdHMgPSBBUlJB
WV9TSVpFKHJrdmRlY19oMjY0X2RlY29kZWRfZm10cyksCj4+ICsgLmRlY29kZWRfZm10cyA9IHJr
dmRlY19oMjY0X2RlY29kZWRfZm10cywKPj4gKyAuc3Vic3lzdGVtX2ZsYWdzID0gVkIyX1Y0TDJf
RkxfU1VQUE9SVFNfTTJNX0hPTERfQ0FQVFVSRV9CVUYsCj4+ICsgfSwKPiAKPiBJIHNlZSB5b3Un
dmUgcmV2ZXJzZWQgdGhlIG9yZGVyIG9mIHRoZSBibG9ja3Mgc28gdGhhdCBIRVZDIG5vdyBjb21l
cwo+IGJlZm9yZSB0aGUgSDI2NCBibG9jay4gV2hpbGUgdGhhdCBtYWtlcyBpdCBjb25zaXN0ZW50
IHdpdGggd2hhdCBEZXRsZXYKPiBoYXMgaW4gdGhlaXIgdjcgYW5kIHdpdGggdGhlIGV4aXN0aW5n
IGNvZGUgaW4gdGhlIGRyaXZlciAuLi4gSSBhY3R1YWxseQo+IHByZWZlciBoYXZpbmcgSDI2NCBi
ZWZvcmUgSEVWQyBhcyB0aGUgYWxwaGFiZXRpY2FsIHNvcnRpbmcgb3JkZXIgaXMKPiBIMjY0IGJl
Zm9yZSBIRVZDLgo+IEluIHRoZSBleGlzdGluZyBjb2RlIHRoZSBWUDkgJ3N0dWZmJyBpcyBsaXN0
ZWQgYmVsb3cgSDI2NCBhbmQgSEVWQy4KPiAKPiBCdXQgdGhlbiBEZXRsZXYgc2hvdWxkIGRvIHRo
YXQgdG9vIGluIHRoZWlyIHBhdGNoIHNldCAuLi4gYW5kICdpZGVhbGx5Jwo+IHRoZSBvcmRlciBv
ZiB0aGUgZXhpc3RpbmcgY29kZSBiZSB1cGRhdGVkIHRvIGJlIGFscGhhYmV0aWNhbGx5IHRvby4K
PiAKPiBPVE9ILCBhIGNvbnNpc3RlbnQgb3JkZXIgd29ya3MgZm9yIG1lIHRvby4KCkkgYmVsaWV2
ZSB0aGUgcmVvcmRlciB3YXMgcmVxdWVzdGVkIGJ5IE5pYyAob2ZmbGluZSBmcm9tIHRoZSBsaXN0
KSBzbwp0aGVyZeKAmXMgcHJvYmFibHkgYSByZWFzb24gYmVoaW5kIGl0LiBJ4oCZbGwga2VlcCB0
aGluZ3MgYWxpZ25lZCB0byB0aGUKb3JkZXIgaW4gRGV0bGV24oCZcyBzZXJpZXMgKHdoYXRldmVy
IHRoYXQgaXMpLgoKQ2hyaXN0aWFuCgoKPiBDaGVlcnMsCj4gIERpZWRlcmlrCj4gCj4+ICt9Owo+
PiArCj4+IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2ZtdF9kZXNjIHZkcHUzODFf
Y29kZWRfZm10c1tdID0gewo+PiB7Cj4+IC5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfSEVWQ19TTElD
RSwKPj4gQEAgLTE2NDMsNiArMTczNCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY192
YXJpYW50X29wcyB2ZHB1MzgxX3ZhcmlhbnRfb3BzID0gewo+PiAuZmxhdHRlbl9tYXRyaWNlcyA9
IHRyYW5zcG9zZV9hbmRfZmxhdHRlbl9tYXRyaWNlcywKPj4gfTsKPj4gCj4+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IHJrdmRlY192YXJpYW50IHZkcHUzNDZfdmFyaWFudCA9IHsKPj4gKyAuY29kZWRf
Zm10cyA9IHZkcHUzNDZfY29kZWRfZm10cywKPj4gKyAubnVtX2NvZGVkX2ZtdHMgPSBBUlJBWV9T
SVpFKHZkcHUzNDZfY29kZWRfZm10cyksCj4+ICsgLnJjYl9zaXplcyA9IHZkcHUzODFfcmNiX3Np
emVzLAo+PiArIC5udW1fcmNiX3NpemVzID0gQVJSQVlfU0laRSh2ZHB1MzgxX3JjYl9zaXplcyks
Cj4+ICsgLm9wcyA9ICZ2ZHB1MzgxX3ZhcmlhbnRfb3BzLAo+PiArfTsKPj4gKwo+PiBzdGF0aWMg
Y29uc3Qgc3RydWN0IHJrdmRlY192YXJpYW50IHZkcHUzODFfdmFyaWFudCA9IHsKPj4gLmNvZGVk
X2ZtdHMgPSB2ZHB1MzgxX2NvZGVkX2ZtdHMsCj4+IC5udW1fY29kZWRfZm10cyA9IEFSUkFZX1NJ
WkUodmRwdTM4MV9jb2RlZF9mbXRzKSwKPj4gQEAgLTE2OTEsNiArMTc5MCwxMCBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBvZl9ya3ZkZWNfbWF0Y2hbXSA9IHsKPj4gLmNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszMzk5LXZkZWMiLAo+PiAuZGF0YSA9ICZyazMzOTlfcmt2ZGVj
X3ZhcmlhbnQsCj4+IH0sCj4+ICsgewo+PiArIC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2
OC12ZGVjIiwKPj4gKyAuZGF0YSA9ICZ2ZHB1MzQ2X3ZhcmlhbnQsCj4+ICsgfSwKPj4gewo+PiAu
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtdmRlYyIsCj4+IC5kYXRhID0gJnZkcHUzODFf
dmFyaWFudCwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
