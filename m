Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 505D6C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 19:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JoEf1zXVseNsnL63Kj4aqMDNCIsRVnwl8iakiSadyg=; b=Do20Y50DjQ33pW
	Wee9WRElLK1HlGpAKWzME/lVcxeUuNm5AO16wiee/R09YfuTG51XExUt3m2NG1IgwOEu9eHdy1ae/
	mi2gP4GTojGoDSir0UY/Kr9q2Ovv+qH0l4mC9rqDUZQA0pin2EKBXtQ0QsasEm56x7e/RUy/375BM
	9RrePMQ8otC7QIlfXEardallNHXn0qTRnE5c315SOmnVduTVvIF9Y9mlysuLeqi3F31WQsM9SydGh
	JLI0KFPv19+o3gYy55GxU/E+3K50eVCKLoVOUvgZFHPaegNWCdHl5hR5T0UkkaViLhVVAIkuwzPH9
	QL05C6m9FATEmUezH2Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCnhs-000N2R-LR; Sat, 16 Jul 2022 19:44:04 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCnhg-000Mxe-En
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 19:43:54 +0000
Received: by mail-ej1-x62f.google.com with SMTP id ss3so14504519ejc.11
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Jul 2022 12:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=H/T5SCRTZnvNt4JlT7zW83Ocmb/ZGFQfFEQNlDPUCI8=;
        b=n9MXmbtnvdtjnx5J2nrdopHTJx07KpjcmhDzg7sg6Qf5Y4FALt6HjxT8YXyIeYVkmt
         ufyrYXmuOYn1BpWZfcyYRtOz8/BOA5iemqNLy5SeSaDz26yp0/HgPHwJ5d530GTfovMC
         l7XyKXc6Ma+vlFjc+SQw1jdgT2mLgpkPRusTZ3H9bGSOkTgCiXtreMkEvGtmcmv9zf3I
         ti3l8jlLXSNLR34055wrdpBMguTfCMHh+fGGrQ05IbxjyFWlfxYSM5eSUisfmpQUUgeR
         YQ82luhh7y69WCpF4pMnpTTtvVzAwUgTVi4cwrNFcM46vAhZ1odde3p05bNKm3d0UHGc
         +f9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=H/T5SCRTZnvNt4JlT7zW83Ocmb/ZGFQfFEQNlDPUCI8=;
        b=mvcT4LtlsOcCAViUE0k2l2wi37N+BQyhVtJ1ms74a5BxHmn0SyWfv77baSPJ3UToLf
         4JETrZi7S+rr/l4UeQd7JV/09fNGKbPaQD6fTnu/StIriI2m9XrkKj8Aga3o11ioazG6
         uxIOFNb2Hj3iaBJEtgdfa9kW1BT0lgtfUXfMdC94gZuJ34GiNxGYLDUr+ZXzh5kmFnmk
         MumIXTApIHzhVGaeZhZ6VT3xNFjY2KSMJLQjwEEXRxrUUATISptS4h9zom7uvQWjehI2
         td1SRaEw20eBhR5WYvrX924fzSxlqiCYGQZy57LgfsKcRL+NvzG/LKZDAodRNN+iZEsb
         oqDg==
X-Gm-Message-State: AJIora/xAJfbXdUc/ZIYdzeNGJxZVqgTYbGv+z9b1CaF8Okq4C1vARcM
	pcmhwXarBO7rSOOb3iv7eIeqVH+bgGtdjFzf
X-Google-Smtp-Source: AGRyM1tfaw6taoKWBs3jjagj6BkI+UEYOKsGCFybdoJ0w7ESh2k81dmaxHS3p8Oue9CB1K3uUXCiaA==
X-Received: by 2002:a17:906:2da:b0:712:14b:62da with SMTP id 26-20020a17090602da00b00712014b62damr19317613ejk.351.1658000628431;
        Sat, 16 Jul 2022 12:43:48 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id q25-20020a1709066ad900b0072b2ef2757csm3489152ejs.180.2022.07.16.12.43.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jul 2022 12:43:47 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v5] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
Date: Sat, 16 Jul 2022 21:43:46 +0200
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
 <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
 <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
 <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
 <3912A668-9F73-40FD-8993-5060F632238A@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
In-Reply-To: <3912A668-9F73-40FD-8993-5060F632238A@kohlschutter.com>
Message-Id: <7E830C9F-BB5D-4EFC-B3F4-1C580E9326A3@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220716_124352_756706_7724257F 
X-CRM114-Status: GOOD (  15.56  )
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

bW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IGZhaWwgb24gTmFub1BpIFI0UyB3aXRoCiJt
bWMxOiBwcm9ibGVtIHJlYWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAvCiJtbWMxOiBlcnJvciAt
MTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2FyZCIKZWl0aGVyIG9uIGNvbGQgYm9vdCBvciBh
ZnRlciBhIHJlYm9vdC4KCk1vcmVvdmVyLCB0aGUgc3lzdGVtIHdvdWxkIGFsc28gc29tZXRpbWVz
IGhhbmcgdXBvbiByZWJvb3QuCgpUaGlzIGlzIGNhdXNlZCBieSB2Y2MzdjAtc2QncyAicmVndWxh
dG9yLWFsd2F5cy1vbiIsIHdoaWNoIHRyaWdnZXJzCmFuIGVycm9uZW91cyBkb3VibGUtaW5pdGlh
bGl6YXRpb24gb2YgdGhlIHJlZ3VsYXRvci4gVGhpcyBjYXVzZXMKdm9sdGFnZSBmbHVjdHVhdGlv
bnMgdGhhdCBjYW4sIGRlcGVuZGluZyBvbiB0aW1pbmcsIHByZXZlbnQgdGhlClNEIGNhcmQgZnJv
bSBpbml0aWFsaXppbmcgY29ycmVjdGx5LgoKQWRkaW5nIHNvbWUgbGliZXJhbCBkZWxheSB2aWEg
Im9mZi1vbi1kZWxheS11cyIgaXMgaW5lZmZlY3RpdmUgc2luY2UKdGhhdCBjb2RlcGF0aCBpcyBz
a2lwcGVkIGFzIGxvbmcgInJlZ3VsYXRvci1hbHdheXMtb24iIGlzIHNldC4KClJlbW92aW5nICJy
ZWd1bGF0b3ItYWx3YXlzLW9uIiBhbG9uZSBpcyBub3Qgc3VmZmljaWVudCBiZWNhdXNlIHRoYXQK
d291bGQgYWxsb3cgdGhlIHN5c3RlbSB0byBzZXQgR1BJTzBfQTEgdG8gTE9XIHVwb24gcmVib290
LCB3aGljaCBtYXkKY2F1c2UgdGhlIHN5c3RlbSB0byBoYW5nLgoKSW4gb3JkZXIgdG8gYWxsb3cg
dGhlIHN5c3RlbSB0byBzZXQgR1BJTzBfQTEgdG8gSElHSCB1cG9uIGluaXRpYWxpemF0aW9uCmJ1
dCBwcmV2ZW50IGl0IGZyb20gY2hhbmdpbmcgaXQgYmFjayB0byBMT1csIHRoaXMgcGF0Y2ggaW5j
cmVhc2VzIHRoZQp1c2FnZSBjb3VudCBvZiB2Y2MzdjAtc2QgZnJvbSAxIHRvIDIsIHdoZXJlYXMg
dGhlIGFkZGl0aW9uYWwgcmVmZXJlbmNlLAoidmNjMXY4X3MzIiwgaXMgbWFya2VkIGFzICJhbHdh
eXMtb24iLCBjYXVzaW5nIHBlcm1hbmVudCByZXRlbnRpb24uCgpBcyBhIHdlbGNvbWUgc2lkZS1l
ZmZlY3QsIHRoaXMgY2hhbmdlIGFsbG93cyB0aGUgU0QgY2FyZCB2b2x0YWdlIHRvIGJlCnNldCBi
YWNrIHRvIDMuMFYgdXBvbiByZWJvb3QsIGFsbG93aW5nIGJvb3Rsb2FkZXJzIHRvIHVzZSB0aGUg
Y2FyZCByaWdodAphd2F5LCBvYnNvbGV0aW5nIGZ1cnRoZXIgcGF0Y2hpbmcuCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+
Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIHwg
MTMgKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktbmFub3BpNC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFu
b3BpNC5kdHNpCmluZGV4IDhjMGZmNmM5NmUwMy4uMzg1MDdhNmUzMDQ2IDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCkBAIC02MSw3ICs2
MSwxNyBAQCB2Y2MxdjhfczM6IHZjYzF2OC1zMyB7CiAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDE4MDAwMDA+OwogCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKIAkJ
cmVndWxhdG9yLW5hbWUgPSAidmNjMXY4X3MzIjsKLQkJdmluLXN1cHBseSA9IDwmdmNjXzF2OD47
CisKKwkJLyoKKwkJICogV29ya2Fyb3VuZCB0byBza2lwIHNldHRpbmcgZ3BpbzAgUktfUEExIHRv
IExPVyB1cG9uIHJlYm9vdCwKKwkJICogd2hpY2ggbWF5IGZyZWV6ZSB0aGUgc3lzdGVtLgorCQkg
KgorCQkgKiBBZGRpbmcgYSByZWZlcmVuY2UgdG8gdmNjM3YwX3NkIGluY3JlYXNlcyBpdHMgbnVt
X3VzZXJzCisJCSAqIGNvdW50IHRvIDIsIHByZXZlbnRpbmcgZGVhY3RpdmF0aW9uIHNpbmNlIHRo
aXMgcmVndWxhdG9yIGlzCisJCSAqIG1hcmtlZCAiYWx3YXlzLW9uIi4KKwkJICovCisJCS8vIHZp
bi1zdXBwbHkgPSA8JnZjY18xdjg+OyAvLyBhY3R1YWwgc3VwcGx5CisJCXZpbi1zdXBwbHkgPSA8
JnZjYzN2MF9zZD47CiAJfTsKIAogCXZjYzN2MF9zZDogdmNjM3YwLXNkIHsKQEAgLTcwLDcgKzgw
LDYgQEAgdmNjM3YwX3NkOiB2Y2MzdjAtc2QgewogCQlncGlvID0gPCZncGlvMCBSS19QQTEgR1BJ
T19BQ1RJVkVfSElHSD47CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJCXBpbmN0cmwt
MCA9IDwmc2RtbWMwX3B3cl9oPjsKLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKIAkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CiAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0g
PDMwMDAwMDA+OwogCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwotLSAKMi4zNi4xCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
