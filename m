Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B1F8C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 09:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1d05cEJ22jY12/nh49759nRe9LxdUpL56tdWg6A2410=; b=SYH+S02DTRI3HW
	0dmhmesb0SwBga+y6MpCfO+1EwOjDcXv9+1qsiKG5NXtBL97O6sZmrHTYCK7veKkEzkjSDnh/7O+q
	GLWDOhRiu1tw2iK0z0OJ1w3mEa9W5fTldcp6NSJBb/RCUmErE3mabUtY3V9ctgYQGVE3XcpC6LKGe
	PimVmNqvUaVxhAWfZdu3xfiw7ML0txYqJO4Lvn3kntMABSrcTMGw4JWnZznG7eJIzZF+Szkapmn77
	tysfdF+o1SUwmxtBANrvPECnBGTt59kHFyb2rCdX22i4SPli+5RPTSlrdkn+tpiTsFPD4oIqXnfDw
	gBtTzesrxhCM3zCUqo/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sciOj-0000000DsQi-2Ccj;
	Sat, 10 Aug 2024 09:28:29 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sciOg-0000000DsPV-0RoE
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Aug 2024 09:28:27 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-2689f749702so1514394fac.3
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Aug 2024 02:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723282104; x=1723886904; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=POxk62T02uNYfGYqWbrOQkk1jdML19M7AItpdTradPY=;
        b=b3R1uHhS6vublN0lV5nkA62YXtXULPiOAYMoHoqBIHIWmtKHgfuuh95dTZDoHWaagD
         3LLXlppRQ7u8BuAI63pBSYhYP6Ve+zrkAAzD6w1c5ALEyB0QolNqbjNIq+FfwHQkHcS9
         wptQboYLADFuy25gc66b+JzeBnoXVP6nrogk78SwDQxic4ZeITBBgQFQMFybc2xtPx8D
         5orwLWPnSE25pr5E7I+Gc5C6K0mQiNSvmAV1gHp4/rsgJF33337YGBN/ZEzWzcn5aoNh
         epc76gdI4yMTOzymCr8rloYlorHMo8dEon3rXMdc65fGMa6/VUPzvyyAnDvT7N/XVfva
         9CZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723282104; x=1723886904;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=POxk62T02uNYfGYqWbrOQkk1jdML19M7AItpdTradPY=;
        b=K+69IdQ+3xCLd1hSKJiVsOWPqVjCo/V7/mfsUiS2wmM0z0jrqPYerS4lFMyQ+5j3fH
         o/E5TG4rzdTjfe9ScWYdcbq3VEDPKP+eF1IQX52sw63PqOqR8IU8GagT9UEaeB9LVZxV
         Xs8gfw0DGkeb9VixbxDLwksHimk8AWOp0Qmw0fehmLSAxPQcT+4GDBMJGkJkUiO/H+PP
         aqIPCs1f9hnvBb8YdqFuG+SPJLqiAu546YnS92v/VJ1McvAYD6dnDM9N36Cbyu4UNiUB
         CkhrhFWNTH0+CpT9+VZckWjdxis4e9zkRKjTt8iRy32+9WbhkITgvM8QwR5Kn25YHDVY
         weMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxTq9V0twT6IsHWZSX+FWZ6OcAoXEg96V0A0OGIydgDSJJ+JJDhjBYKNL8X2ghbVt2QZvNDPQhkTMIirPaIc6OVg9AvQemhqoCoWmp2Qbb8TuO
X-Gm-Message-State: AOJu0Yz5Pw55DSO7o7Ql6szPSX6TB6uyIvYsWI69eeHJHF4fMkz20B1g
	LTXDs5m4D2giC101ZFuFwsBJXC26JvgyqVASh6yujcW0s5vgyjl9kNkFIFpeEg==
X-Google-Smtp-Source: AGHT+IGxXpic2tbSmJIvmZMe7QV/huh6dtAslPZVPvo5/1EPsxoFJhDufcj4j0iJA3dkRUA/5lFElA==
X-Received: by 2002:a05:6870:828c:b0:268:a79a:be0d with SMTP id 586e51a60fabf-26c6302463dmr4360557fac.47.1723282104349;
        Sat, 10 Aug 2024 02:28:24 -0700 (PDT)
Received: from thinkpad ([220.158.156.101])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-710e58a7b6csm947588b3a.60.2024.08.10.02.28.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 02:28:23 -0700 (PDT)
Date: Sat, 10 Aug 2024 14:58:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] scsi: ufs: rockchip: init support for UFS
Message-ID: <20240810092817.GA147655@thinkpad>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
 <20240809062813.GC2826@thinkpad>
 <421d48b7-4aa7-4202-8b5f-9c60916f6ef6@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <421d48b7-4aa7-4202-8b5f-9c60916f6ef6@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_022826_356864_77854F2B 
X-CRM114-Status: GOOD (  34.74  )
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

T24gRnJpLCBBdWcgMDksIDIwMjQgYXQgMDQ6MTY6NDFQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
OgoKWy4uLl0KCj4gPiA+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9oY2VfZW5hYmxlX25vdGlm
eShzdHJ1Y3QgdWZzX2hiYSAqaGJhLAo+ID4gPiArCQkJCQkgZW51bSB1ZnNfbm90aWZ5X2NoYW5n
ZV9zdGF0dXMgc3RhdHVzKQo+ID4gPiArewo+ID4gPiArCWludCBlcnIgPSAwOwo+ID4gPiArCj4g
PiA+ICsJaWYgKHN0YXR1cyA9PSBQUkVfQ0hBTkdFKSB7Cj4gPiA+ICsJCWludCByZXRyeV9vdXRl
ciA9IDM7Cj4gPiA+ICsJCWludCByZXRyeV9pbm5lcjsKPiA+ID4gK3N0YXJ0Ogo+ID4gPiArCQlp
ZiAodWZzaGNkX2lzX2hiYV9hY3RpdmUoaGJhKSkKPiA+ID4gKwkJCS8qIGNoYW5nZSBjb250cm9s
bGVyIHN0YXRlIHRvICJyZXNldCBzdGF0ZSIgKi8KPiA+ID4gKwkJCXVmc2hjZF9oYmFfc3RvcCho
YmEpOwo+ID4gPiArCj4gPiA+ICsJCS8qIFVuaVBybyBsaW5rIGlzIGRpc2FibGVkIGF0IHRoaXMg
cG9pbnQgKi8KPiA+ID4gKwkJdWZzaGNkX3NldF9saW5rX29mZihoYmEpOwo+ID4gPiArCj4gPiA+
ICsJCS8qIHN0YXJ0IGNvbnRyb2xsZXIgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2UgKi8KPiA+ID4g
KwkJdWZzaGNkX3dyaXRlbChoYmEsIENPTlRST0xMRVJfRU5BQkxFLCBSRUdfQ09OVFJPTExFUl9F
TkFCTEUpOwo+ID4gPiArCj4gPiA+ICsJCXVzbGVlcF9yYW5nZSgxMDAsIDIwMCk7Cj4gPiA+ICsK
PiA+ID4gKwkJLyogd2FpdCBmb3IgdGhlIGhvc3QgY29udHJvbGxlciB0byBjb21wbGV0ZSBpbml0
aWFsaXphdGlvbiAqLwo+ID4gPiArCQlyZXRyeV9pbm5lciA9IDUwOwo+ID4gPiArCQl3aGlsZSAo
IXVmc2hjZF9pc19oYmFfYWN0aXZlKGhiYSkpIHsKPiA+ID4gKwkJCWlmIChyZXRyeV9pbm5lcikg
ewo+ID4gPiArCQkJCXJldHJ5X2lubmVyLS07Cj4gPiA+ICsJCQl9IGVsc2Ugewo+ID4gPiArCQkJ
CWRldl9lcnIoaGJhLT5kZXYsCj4gPiA+ICsJCQkJCSJDb250cm9sbGVyIGVuYWJsZSBmYWlsZWRc
biIpOwo+ID4gPiArCQkJCWlmIChyZXRyeV9vdXRlcikgewo+ID4gPiArCQkJCQlyZXRyeV9vdXRl
ci0tOwo+ID4gPiArCQkJCQlnb3RvIHN0YXJ0Owo+ID4gPiArCQkJCX0KPiA+ID4gKwkJCQlyZXR1
cm4gLUVJTzsKPiA+ID4gKwkJCX0KPiA+ID4gKwkJCXVzbGVlcF9yYW5nZSgxMDAwLCAxMTAwKTsK
PiA+ID4gKwkJfQo+ID4gCj4gPiBZb3UganVzdCBkdXBsaWNhdGVkIHVmc2hjZF9oYmFfZXhlY3V0
ZV9oY2UoKSBoZXJlLiBXaHk/IFRoaXMgZG9lc24ndCBtYWtlIHNlbnNlLgo+IAo+IFNpbmNlIHdl
IHNldCBVRlNIQ0lfUVVJUktfQlJPS0VOX0hDRSwgYW5kIHdlIGFsc28gbmVlZCB0byBkbyBzb21l
dGluZwo+IHdoaWNoIGlzIHZlcnkgc2ltaWxhciB0byB1ZnNoY2RfaGJhX2V4ZWN1dGVfaGNlKCks
IGJlZm9yZSBjYWxsaW5nCj4gdWZzaGNkX2RtZV9yZXNldCgpLiBTaW1pbGFyIGJ1dCBub3QgdG90
YWxseSB0aGUgc2FtZS4gSSdsbCB0cnkgdG8gc2VlIGlmCj4gd2UgY2FuIGV4cG9ydCB1ZnNoY2Rf
aGJhX2V4ZWN1dGVfaGNlKCkgdG8gbWFrZSBmdWxsIHVzZSBvZiBpdC4KPiAKCkJ1dCB5b3UgYXJl
IHN0YXJ0aW5nIHRoZSBjb250cm9sbGVyIHVzaW5nIFJFR19DT05UUk9MTEVSX0VOQUJMRS4gSXNu
J3QgdGhhdApzdXBwb3NlZCB0byBiZSBicm9rZW4gaWYgeW91IHNldCBVRlNIQ0lfUVVJUktfQlJP
S0VOX0hDRT8gT3IgSSBhbQptaXN1bmRlcnN0YW5kaW5nIHRoZSBxdWlyaz8KCj4gPiAKPiA+ID4g
Kwl9IGVsc2UgeyAvKiBQT1NUX0NIQU5HRSAqLwo+ID4gPiArCQllcnIgPSB1ZnNoY2Rfdm9wc19w
aHlfaW5pdGlhbGl6YXRpb24oaGJhKTsKPiA+ID4gKwl9Cj4gPiA+ICsKPiA+ID4gKwlyZXR1cm4g
ZXJyOwo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgdm9pZCB1ZnNfcm9ja2NoaXBfc2V0
X3BtX2x2bChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ID4gPiArewo+ID4gPiArCWhiYS0+cnBtX2x2
bCA9IFVGU19QTV9MVkxfMTsKPiA+ID4gKwloYmEtPnNwbV9sdmwgPSBVRlNfUE1fTFZMXzM7Cj4g
PiA+ICt9Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3JrMzU3Nl9waHlf
aW5pdChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ID4gPiArewo+ID4gPiArCXN0cnVjdCB1ZnNfcm9j
a2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4gPiArCj4gPiA+
ICsJdWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoUEFfTE9DQUxfVFhfTENDX0VO
QUJMRSwgMHgwKSwgMHgwKTsKPiA+ID4gKwkvKiBlbmFibGUgdGhlIG1waHkgRE1FX1NFVCBjZmcg
Ki8KPiA+ID4gKwl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTCgweDIwMCwgMHgw
KSwgMHg0MCk7Cj4gPiA+ICsJZm9yIChpbnQgaSA9IDA7IGkgPCAyOyBpKyspIHsKPiA+ID4gKwkJ
LyogQ29uZmlndXJhdGlvbiBNLVRYICovCj4gPiA+ICsJCXVmc2hjZF9kbWVfc2V0KGhiYSwgVUlD
X0FSR19NSUJfU0VMKDB4YWEsIFNFTF9UWF9MQU5FMCArIGkpLCAweDA2KTsKPiA+ID4gKwkJdWZz
aGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoMHhhOSwgU0VMX1RYX0xBTkUwICsgaSks
IDB4MDIpOwo+ID4gPiArCQl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTCgweGFk
LCBTRUxfVFhfTEFORTAgKyBpKSwgMHg0NCk7Cj4gPiA+ICsJCXVmc2hjZF9kbWVfc2V0KGhiYSwg
VUlDX0FSR19NSUJfU0VMKDB4YWMsIFNFTF9UWF9MQU5FMCArIGkpLCAweGU2KTsKPiA+ID4gKwkJ
dWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoMHhhYiwgU0VMX1RYX0xBTkUwICsg
aSksIDB4MDcpOwo+ID4gPiArCQl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTCgw
eDk0LCBTRUxfVFhfTEFORTAgKyBpKSwgMHg5Myk7Cj4gPiA+ICsJCXVmc2hjZF9kbWVfc2V0KGhi
YSwgVUlDX0FSR19NSUJfU0VMKDB4OTMsIFNFTF9UWF9MQU5FMCArIGkpLCAweGM5KTsKPiA+ID4g
KwkJdWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoMHg3ZiwgU0VMX1RYX0xBTkUw
ICsgaSksIDB4MDApOwo+ID4gPiArCQkvKiBDb25maWd1cmF0aW9uIE0tUlggKi8KPiA+ID4gKwkJ
dWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoMHgxMiwgU0VMX1JYX0xBTkUwICsg
aSksIDB4MDYpOwo+ID4gPiArCQl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTCgw
eDExLCBTRUxfUlhfTEFORTAgKyBpKSwgMHgwMCk7Cj4gPiA+ICsJCXVmc2hjZF9kbWVfc2V0KGhi
YSwgVUlDX0FSR19NSUJfU0VMKDB4MWQsIFNFTF9SWF9MQU5FMCArIGkpLCAweDU4KTsKPiA+ID4g
KwkJdWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoMHgxYywgU0VMX1JYX0xBTkUw
ICsgaSksIDB4OGMpOwo+ID4gPiArCQl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NF
TCgweDFiLCBTRUxfUlhfTEFORTAgKyBpKSwgMHgwMik7Cj4gPiA+ICsJCXVmc2hjZF9kbWVfc2V0
KGhiYSwgVUlDX0FSR19NSUJfU0VMKDB4MjUsIFNFTF9SWF9MQU5FMCArIGkpLCAweGY2KTsKPiA+
ID4gKwkJdWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoMHgyZiwgU0VMX1JYX0xB
TkUwICsgaSksIDB4NjkpOwo+ID4gPiArCX0KPiA+ID4gKwkvKiBkaXNhYmxlIHRoZSBtcGh5IERN
RV9TRVQgY2ZnICovCj4gPiA+ICsJdWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwo
MHgyMDAsIDB4MCksIDB4MDApOwo+ID4gPiArCj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+
bXBoeV9iYXNlLCAweDgwLCAweDA4Qyk7Cj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBo
eV9iYXNlLCAweEI1LCAweDExMCk7Cj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBoeV9i
YXNlLCAweEI1LCAweDI1MCk7Cj4gPiA+ICsKPiA+IAo+ID4gV2h5IGNhbid0IHlvdSBkbyB0aGVz
ZSBzZXR0aW5ncyBpbiBhIFBIWSBkcml2ZXI/Cj4gCj4gQXMgd2UgaGF2ZSAtPnBoeV9pbml0aWFs
aXphdGlvbiBpbiBzdHJ1Y3QgdWZzX2hiYV92YXJpYW50X29wcywKPiB3aGljaCBhc2tzIHRoZSBo
b3N0IGRyaXZlciB0byB1c2UgaXQgdG8gaW5pdGlhbGl6ZSBwaHlzLiBJdCBkb2Vzbid0Cj4gc2Vl
bSB0byBuZWVkIHRvIGNyZWF0ZSBhIHdob2xlIG5ldyBmaWxlIHRvIGp1c3QgYWRkIHNvbWUgc21h
bGxzIGZpeGVkCj4gcGFyYW1ldGVycy4gOikKPiAKClNvIHRoZSBQSFkgZG9lc24ndCBuZWVkIGFu
eSByZXNvdXJjZXMgKGNsb2NrcywgcmVndWxhdG9ycywgZXRjLi4uKSBvdGhlciB0aGFuCnByb2dy
YW1taW5nIHRoZXNlIHNlcXVlbmNlcz8gSWYgc28sIGl0IGlzIGZpbmUgd2l0aCBtZS4KCj4gCj4g
PiAKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4MDMsIDB4MTM0KTsK
PiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4MDMsIDB4Mjc0KTsKPiA+
ID4gKwo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1waHlfYmFzZSwgMHgzOCwgMHgwRTAp
Owo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1waHlfYmFzZSwgMHgzOCwgMHgyMjApOwo+
ID4gPiArCj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBoeV9iYXNlLCAweDUwLCAweDE2
NCk7Cj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBoeV9iYXNlLCAweDUwLCAweDJBNCk7
Cj4gPiA+ICsKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4ODAsIDB4
MTc4KTsKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4ODAsIDB4MkI4
KTsKPiA+ID4gKwo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1waHlfYmFzZSwgMHgxOCwg
MHgxQjApOwo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1waHlfYmFzZSwgMHgxOCwgMHgy
RjApOwo+ID4gPiArCj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBoeV9iYXNlLCAweDAz
LCAweDEyOCk7Cj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBoeV9iYXNlLCAweDAzLCAw
eDI2OCk7Cj4gPiA+ICsKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4
MjAsIDB4MTJDKTsKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4MjAs
IDB4MjZDKTsKPiA+ID4gKwo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1waHlfYmFzZSwg
MHhDMCwgMHgxMjApOwo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1waHlfYmFzZSwgMHhD
MCwgMHgyNjApOwo+ID4gPiArCj4gPiA+ICsJdWZzX3N5c193cml0ZWwoaG9zdC0+bXBoeV9iYXNl
LCAweDAzLCAweDA5NCk7Cj4gPiA+ICsKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5
X2Jhc2UsIDB4MDMsIDB4MUI0KTsKPiA+ID4gKwl1ZnNfc3lzX3dyaXRlbChob3N0LT5tcGh5X2Jh
c2UsIDB4MDMsIDB4MkY0KTsKPiA+ID4gKwo+ID4gPiArCXVmc19zeXNfd3JpdGVsKGhvc3QtPm1w
aHlfYmFzZSwgMHhDMCwgMHgwOEMpOwo+ID4gPiArCXVkZWxheSgxKTsKPiA+ID4gKwl1ZnNfc3lz
X3dyaXRlbChob3N0LT5tcGh5X2Jhc2UsIDB4MDAsIDB4MDhDKTsKPiA+ID4gKwo+ID4gPiArCXVk
ZWxheSgyMDApOwo+ID4gPiArCS8qIHN0YXJ0IGxpbmsgdXAgKi8KPiA+ID4gKwl1ZnNoY2RfZG1l
X3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTChNSUJfVF9EQkdfQ1BPUlRfVFhfRU5ESUFOLCAwKSwg
MHgwKTsKPiA+ID4gKwl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTChNSUJfVF9E
QkdfQ1BPUlRfUlhfRU5ESUFOLCAwKSwgMHgwKTsKPiA+ID4gKwl1ZnNoY2RfZG1lX3NldChoYmEs
IFVJQ19BUkdfTUlCX1NFTChOX0RFVklDRUlELCAwKSwgMHgwKTsKPiA+ID4gKwl1ZnNoY2RfZG1l
X3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTChOX0RFVklDRUlEX1ZBTElELCAwKSwgMHgxKTsKPiA+
ID4gKwl1ZnNoY2RfZG1lX3NldChoYmEsIFVJQ19BUkdfTUlCX1NFTChUX1BFRVJERVZJQ0VJRCwg
MCksIDB4MSk7Cj4gPiA+ICsJdWZzaGNkX2RtZV9zZXQoaGJhLCBVSUNfQVJHX01JQl9TRUwoVF9D
T05ORUNUSU9OU1RBVEUsIDApLCAweDEpOwo+ID4gPiArCj4gPiA+ICsJcmV0dXJuIDA7Cj4gPiA+
ICt9Cj4gPiA+ICsKClsuLi5dCgo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3Bz
IHVmc19yb2NrY2hpcF9wbV9vcHMgPSB7Cj4gPiA+ICsJU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMo
dWZzX3JvY2tjaGlwX3N1c3BlbmQsIHVmc19yb2NrY2hpcF9yZXN1bWUpCj4gPiA+ICsJU0VUX1JV
TlRJTUVfUE1fT1BTKHVmc19yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQsIHVmc19yb2NrY2hpcF9y
dW50aW1lX3Jlc3VtZSwgTlVMTCkKPiA+IAo+ID4gV2h5IGNhbid0IHlvdSB1c2UgdWZzaGNkIFBN
IG9wcyBhcyBsaWtlIG90aGVyIHZlbmRvciBkcml2ZXJzPwo+IAo+IEl0IGRvZXNuJ3Qgd29yayBm
cm9tIHRoZSB0ZXN0LiBXZSBoYXZlIG1hbnkgdXNlIGNhc2UgdG8gcG93ZXIgZG93biB0aGUKPiBj
b250cm9sbGVyIGFuZCBkZXZpY2UsIHNvIHRoZXJlIGlzIG5vIGZsb3cgdG8gcmVjb3ZlcnkgdGhl
IGxpbmsuIE9ubHkKPiB3aGVuIHRoZSBmaXJzdCBhY2Nlc3NpbmcgdG8gVUZTIGZhaWxzLCB0aGUg
dWZzaGNkIGVycm9yIGhhbmRsZSByZWNvdmVyeSB0aGUKPiBsaW5rLiBUaGlzIGlzIG5vdCB3aGF0
IHdlIGV4cGVjdC4KPiAKCldoYXQgdGVzdHM/IFRoZSBleGlzdGluZyBVRlMgY29udHJvbGxlciBk
cml2ZXJzIGFyZSB1c2VkIGluIHByb2R1Y3Rpb24gZGV2aWNlcwphbmQgdGhleSBuZXZlciBoYWQg
YSB1c2VjYXNlIHRvIGludmVudCB0aGVpciBvd24gUE0gY2FsbGJhY2tzLiBTbyBpZiB5b3VyCmNv
bnRyb2xsZXIgaXMgc3BlY2lhbCwgdGhlbiB5b3UgbmVlZCB0byBqdXN0aWZ5IGl0IG1vcmUgZWxh
Ym9yYXRlbHkuIElmCnNvbWV0aGluZyBpcyBtaXNzaW5nIGluIHVmc2hjZCBjYWxsYmFja3MsIHRo
ZW4gd2UgY2FuIGFkZCB0aGVtLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
