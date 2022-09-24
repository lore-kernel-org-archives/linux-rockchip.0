Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB1C4C07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 17:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vkT6JBUrhVTSMeNpno7XjcGMd8co6iaQjEDXs6rdxB8=; b=wqye5nIG+mZ0wLaVPSOBiJWJCg
	tqojL7INloC+SCdd85QkwdjwdxALpU9bAjWxnYKHx0zqUAceNz25MiuMahLObEOuIPKFFcLimaXw3
	ID1SuZIrkxZqY+ImjG35j5vsCYk5m3p+sGHZnIOgNmG/PC7bz5fc7XNsFjsQooCm6A54cEuM98OQg
	lvaj+yfaoSBkw6opCiHQLN2YNJx8Z4bvuf4KSx/I2jPv4tdkWTB0WovC7mkKusIQps9C79qGlsMJX
	WeTmIXdScwqkUrQNX3C7GU0UapHDcToeS9PPHGzt7VVC3v/ksIpjSQd18EYoWpTRP3G4rZghnjN9i
	hH7eRG1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc9Bp-008J9n-IG; Sat, 24 Sep 2022 17:43:45 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc9Bn-008J7z-0N
	for linux-rockchip@lists.infradead.org; Sat, 24 Sep 2022 17:43:44 +0000
Received: by mail-wr1-x436.google.com with SMTP id t14so4412565wrx.8
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Sep 2022 10:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=kJbI57KwEi9JXWg5Xfy7/Kxen09GuN8s5xZUiziP8Gk=;
        b=h7RyXIzQ8DL7aGhdKrRJ4NDg804HAWuHSUZd6GLfllCHryZVMVoU87i9ny7G/LkwZw
         e5JOx4pQATgOFocJr9HZll0fDuBdKlb0B+erso6MHToExIV9jj41bnaj2gi547zxkD6f
         VUrBtupQDBwYXdZ1+ao5L1yM/lHpkqssjOChkcx+MfoCLgnuJuJO7f/dxKTZStSymm5B
         RFTlZoNM2bX7prco7Zu/GKsbhDMFKr+ZooECGyW9MMqGHbEIp4J2wmuJo/SbQFpFdhSc
         6XcXKt1N3gjD5NJ1l+HtP1lTMTubAzyU2wfYwjgIArTXm04/8XrM9QZzAJrSLZGjKAPU
         HvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=kJbI57KwEi9JXWg5Xfy7/Kxen09GuN8s5xZUiziP8Gk=;
        b=lr43+qCtJrLyRA17lNkXD1QzgeMl5VgyIoqnuHs+BduiozprO7iqRz0JdYYNCSy0fU
         4BfA1xUwBGSrH58jyeXdONrMTMKrfQyY+igla4FFYoIyjyYTCHBdHwaKt2FT2WllvNdS
         awbsRZs/NDx8NYAEK6KVOmAX0/q9onhzRkJAnGB4EdPqbUPia9okQGyTj+mh0y+RvNH8
         4Zl1w32CYZM5IhENQloD7h9anM5t76nG93oQ9hNtwOBxAw//Iz8WaSgd7IPj/w1+6Va4
         qEIcu+Fn57z9lseRJ6JNZW25i5vGjzVK+XFvJcWYMcvIzhUCHmr+Sl9divqZ6mwFViCz
         +1/Q==
X-Gm-Message-State: ACrzQf1DfcKi87bTXPg3fG6NOFPDi1jre14MpXulj/R9d+R8rPBBl/S4
	HIyP/xRxjE7jvKqsHoVd2VhyiQ==
X-Google-Smtp-Source: AMsMyM6o1FGcCKJhtZzHLKvI2PdmDw7i/TZT6dJ5EHYHAnAYTOLOjJHaMFZGbXlvaMoi8YvInmnVRg==
X-Received: by 2002:a05:6000:1ac9:b0:22a:cc07:9cfe with SMTP id i9-20020a0560001ac900b0022acc079cfemr8598270wry.186.1664041420170;
        Sat, 24 Sep 2022 10:43:40 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id n42-20020a05600c3baa00b003a319b67f64sm18414302wms.0.2022.09.24.10.43.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 10:43:39 -0700 (PDT)
Message-ID: <4f398e4c-973b-7843-2f75-27324d109277@linaro.org>
Date: Sat, 24 Sep 2022 19:43:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Heiko St??bner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: v6.0-rc6 - arm64 / rock960 : kernel panic
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_104343_087831_589E6848 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgp0aGVyZSBpcyBhIGtlcm5lbCBwYW5pYyBvbiBhIHJvY2s5NjAgYm9hcmQ6CgpBZnRlciBn
aXQgYmlzZWN0aW5nLCBJIGhhdmU6Cgpjb21taXQgMTRmYWNiYzE4NzFhZTE1NDA0NjY2NzQ3YjUz
MTljMDhlMDRiODc1YQpNZXJnZTogZjVjOTdkYTgwMzdiIDMyMzQ2NDkxZGRmMgpBdXRob3I6IEdy
ZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+CkRhdGU6ICAgTW9u
IEp1bCAxMSAwODozMjo1OCAyMDIyICswMjAwCgogICAgIE1lcmdlIDUuMTktcmM2IGludG8gY2hh
ci1taXNjLW5leHQKCiAgICAgV2UgbmVlZCB0aGUgbWlzYyBkcml2ZXIgZml4ZXMgaW4gaGVyZSBh
cyB3ZWxsLgoKICAgICBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgoKQW55IGNsdWU/CgoKWyAgICAyLjM3NzM4Nl0gVW5hYmxlIHRv
IGhhbmRsZSBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGF0IAp2aXJ0dWFsIGFkZHJl
c3MgMDAwMDAwMDAwMDAwMDAwNQpbICAgIDIuMzc3MzkwXSBNZW0gYWJvcnQgaW5mbzoKWyAgICAy
LjM3NzM5Ml0gICBFU1IgPSAweDAwMDAwMDAwOTYwMDAwMDQKWyAgICAyLjM3OTUyOV0gICBFQyA9
IDB4MjU6IERBQlQgKGN1cnJlbnQgRUwpLCBJTCA9IDMyIGJpdHMKWyAgICAyLjM3OTk5NF0gICBT
RVQgPSAwLCBGblYgPSAwClsgICAgMi4zODAyNjNdICAgRUEgPSAwLCBTMVBUVyA9IDAKWyAgICAy
LjM4MDUzOF0gICBGU0MgPSAweDA0OiBsZXZlbCAwIHRyYW5zbGF0aW9uIGZhdWx0ClsgICAgMi4z
ODA5NjRdIERhdGEgYWJvcnQgaW5mbzoKWyAgICAyLjM4MTIxN10gICBJU1YgPSAwLCBJU1MgPSAw
eDAwMDAwMDA0ClsgICAgMi4zODEzNDNdIG1tYzI6IFNESENJIGNvbnRyb2xsZXIgb24gZmUzMzAw
MDAubW1jIFtmZTMzMDAwMC5tbWNdIAp1c2luZyBBRE1BClsgICAgMi4zODE1NThdICAgQ00gPSAw
LCBXblIgPSAwClsgICAgMi4zODI0MjZdIFswMDAwMDAwMDAwMDAwMDA1XSB1c2VyIGFkZHJlc3Mg
YnV0IGFjdGl2ZV9tbSBpcyBzd2FwcGVyClsgICAgMi4zODI5ODFdIEludGVybmFsIGVycm9yOiBP
b3BzOiA5NjAwMDAwNCBbIzFdIFBSRUVNUFQgU01QClsgICAgMi4zODM0NjhdIE1vZHVsZXMgbGlu
a2VkIGluOgpbICAgIDIuMzgzNzQwXSBDUFU6IDQgUElEOiAxIENvbW06IHN3YXBwZXIvMCBOb3Qg
dGFpbnRlZCA1LjE5LjAtcmM2KyAjNzI4ClsgICAgMi4zODQzMTFdIEhhcmR3YXJlIG5hbWU6IDk2
Ym9hcmRzIFJvY2s5NjAgKERUKQpbICAgIDIuMzg0NzE1XSBwc3RhdGU6IDYwMDAwMDA1IChuWkN2
IGRhaWYgLVBBTiAtVUFPIC1UQ08gLURJVCAtU1NCUyAKQlRZUEU9LS0pClsgICAgMi4zODUzMjNd
IHBjIDogcGluY3RybF9sb29rdXBfc3RhdGUrMHgyMC8weGMwClsgICAgMi4zODU3MjldIGxyIDog
cm9ja2NoaXBfaTJzX3Byb2JlKzB4MWE4LzB4NTRjClsgICAgMi4zODYxMzBdIHNwIDogZmZmZjgw
MDAwODA0YmIzMApbICAgIDIuMzg2NDIwXSB4Mjk6IGZmZmY4MDAwMDgwNGJiMzAgeDI4OiAwMDAw
MDAwMDAwMDAwMDAwIHgyNzogCmZmZmY4MDAwMDlmMjA0YzgKWyAgICAyLjM4NzA0OF0geDI2OiBm
ZmZmODAwMDA5ZmMxMDYwIHgyNTogZmZmZjgwMDAwOWZjMTA3OCB4MjQ6IApmZmZmMDAwMDAyNjkx
YjY4ClsgICAgMi4zODc2NzNdIHgyMzogZmZmZjgwMDAwOTk2NzkzOCB4MjI6IGZmZmZmZmZmZmZm
ZmZmZWQgeDIxOiAKZmZmZjgwMDAwOWUxZTBlOApbICAgIDIuMzg4Mjk5XSB4MjA6IGZmZmZmZmZm
ZmZmZmZmZWQgeDE5OiBmZmZmMDAwMDAyNTk3NDgwIHgxODogCmZmZmZmZmZmZmZmZmZmZmYKWyAg
ICAyLjM4ODkyNF0geDE3OiAwMDAwMDAwNDAwNDRmZmZmIHgxNjogMDA0MDAwMzRiNTUwMzUxMCB4
MTU6IApmZmZmODAwMDg4MDRiNzg3ClsgICAgMi4zODk1NTBdIHgxNDogMDAwMDAwMDAwMDAwMDAw
MCB4MTM6IDZjNzI3NDYzNmU2OTcwMjAgeDEyOiAKNzMzMjY5MjA2NDZlNjk2NgpbICAgIDIuMzkw
MTc2XSB4MTE6IDIwNmY3NDIwNjQ2NTZjNjkgeDEwOiA2MTY2MjAzYTczMzI2OTJlIHg5IDogCjY1
NmM2OTYxNjYyMDNhNzMKWyAgICAyLjM5MDgwMV0geDggOiAzMjY5MmUzMDMwMzAzMDYxIHg3IDog
MjA1ZDM2MzIzODM2MzczMyB4NiA6IApmZmZmMDAwMDAxNjU3ODgwClsgICAgMi4zOTE0MjVdIHg1
IDogMDAwMDAwMDAwMDAwMDAwMCB4NCA6IDAwMDAwMDAwMDAwMDAwMDAgeDMgOiAKMDAwMDAwMDAw
MDAwMDAwMApbICAgIDIuMzkyMDUxXSB4MiA6IDAwMDAwMDAwMDAwMDAwMDAgeDEgOiBmZmZmODAw
MDA5ZTFlMGU4IHgwIDogCmZmZmZmZmZmZmZmZmZmZWQKWyAgICAyLjM5MjY3N10gQ2FsbCB0cmFj
ZToKWyAgICAyLjM5Mjg5Ml0gIHBpbmN0cmxfbG9va3VwX3N0YXRlKzB4MjAvMHhjMApbICAgIDIu
MzkzMjYxXSAgcm9ja2NoaXBfaTJzX3Byb2JlKzB4MWE4LzB4NTRjClsgICAgMi4zOTM2MjldICBw
bGF0Zm9ybV9wcm9iZSsweDY4LzB4ZTAKWyAgICAyLjM5Mzk1NF0gIHJlYWxseV9wcm9iZS5wYXJ0
LjArMHg5Yy8weDJhYwpbICAgIDIuMzk0MzIxXSAgX19kcml2ZXJfcHJvYmVfZGV2aWNlKzB4OTgv
MHgxNDQKWyAgICAyLjM5NDcwM10gIGRyaXZlcl9wcm9iZV9kZXZpY2UrMHhhYy8weDE0MApbICAg
IDIuMzk1MDcwXSAgX19kcml2ZXJfYXR0YWNoKzB4ZjgvMHgxYTAKWyAgICAyLjM5NTQwN10gIGJ1
c19mb3JfZWFjaF9kZXYrMHg3MC8weGQwClsgICAgMi4zOTU3NDZdICBkcml2ZXJfYXR0YWNoKzB4
MjQvMHgzMApbICAgIDIuMzk2MDYzXSAgYnVzX2FkZF9kcml2ZXIrMHgxNTAvMHgyMDAKWyAgICAy
LjM5NjQwMV0gIGRyaXZlcl9yZWdpc3RlcisweDc4LzB4MTMwClsgICAgMi4zOTY3MzddICBfX3Bs
YXRmb3JtX2RyaXZlcl9yZWdpc3RlcisweDI4LzB4MzQKWyAgICAyLjM5NzE1MF0gIHJvY2tjaGlw
X2kyc19kcml2ZXJfaW5pdCsweDFjLzB4MjgKWyAgICAyLjM5NzU1MF0gIGRvX29uZV9pbml0Y2Fs
bCsweDUwLzB4MWMwClsgICAgMi4zOTc4OTBdICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDIwOC8w
eDI4YwpbICAgIDIuMzk4Mjc0XSAga2VybmVsX2luaXQrMHgyOC8weDEzYwpbICAgIDIuMzk4NTgz
XSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKWyAgICAyLjM5ODkwMV0gQ29kZTogYWEwMDAzZjQg
YTkwMjViZjUgYWEwMDAzZjYgYWEwMTAzZjUgKGY4NDE4ZTkzKQpbICAgIDIuMzk5NDM1XSAtLS1b
IGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0KWyAgICAyLjM5OTg4N10gS2VybmVsIHBh
bmljIC0gbm90IHN5bmNpbmc6IEF0dGVtcHRlZCB0byBraWxsIGluaXQhIApleGl0Y29kZT0weDAw
MDAwMDBiClsgICAgMi40MDA1NTVdIFNNUDogc3RvcHBpbmcgc2Vjb25kYXJ5IENQVXMKWyAgICAy
LjQwMDk4NF0gS2VybmVsIE9mZnNldDogMHg4MDAwMCBmcm9tIDB4ZmZmZjgwMDAwODAwMDAwMApb
ICAgIDIuNDAxNDYzXSBQSFlTX09GRlNFVDogMHgwClsgICAgMi40MDE3MTZdIENQVSBmZWF0dXJl
czogMHg4MDAsMDAxMjc4MTEsMDAwMDEwODIKWyAgICAyLjQwMjEyOF0gTWVtb3J5IExpbWl0OiBu
b25lClsgICAgMi40MDI0MDZdIC0tLVsgZW5kIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBB
dHRlbXB0ZWQgdG8ga2lsbCAKaW5pdCEgZXhpdGNvZGU9MHgwMDAwMDAwYiBdLS0tCgoKLS0gCjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
