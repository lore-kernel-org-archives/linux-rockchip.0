Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31133C43602
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 22:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAsuog6sGJdgzsCJvqIqC5isAgI3CkymyzPk2mfTws8=; b=aSVSwO7I3D44iC
	7HWZE4UKniex/+KCr1F+CeQYlQJpjZWEhICvqUSDh9b74EjrOO743o0dvYwgsQSJ3XYRWSIuHHLCA
	+Rx5eQNMfhW935/UapDR2jTKJ3N/eW7ACdd1KkmyzncMlC20clsmoHtDJAhgBRg+UUBQs9uCEM+JB
	U+rDhCE5W0Yl1z3mA3X70gu5zhg/gz/8izWTNsN60TmEPxAxBt0E6ielnoVx8fhvumkwAm3pm4MGS
	8tx0s3wYWTBcEB4tBhQDS2OVXvwzhgh3yMI9bXxeJnkEYhBt0mzY5xlphA154jQASVoIQsrguJ+aN
	Xjkp/jlORZSD2ukivf2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegeX-00000000IA8-0p9L;
	Tue, 30 Jun 2026 22:10:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegeU-00000000I8c-3XJC
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 22:10:00 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UJDaJR2948486
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 22:09:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	71yptdqayaVFzpJtAQzWI+qpR5NfHXrkWbz9ikn7Ryc=; b=UVVUyqEgI3aai44H
	QkYs6h4Sk/6/uPO94ctKOtJjj3n5+wTduu75T3lBINHDzCPeXdCe/LLgdz4BiIIA
	I6FCYJGuW6rbqCzG+PqGMHpMb6xjJcmfkHJt1PYgP/kntODh+X0VaaTTgDbDdP/t
	5mK6QuZEI5QJqRhPc//Uvx2PsEtojBE3Wf5jUoCGbxwxji82ZKuqfAGOBqi/CtJM
	MHsN9S66aTzRxKSc9r6r3jxLGT72P0S66dSuzw/gjfRycE/zeF8d/az8b9/+BxqX
	uSr2XsXere5zlNsaYwMjPVwz06xYAC/u+oMsdfeWvyWqnAZBEcPGno6XGT0scTZD
	4sRW/w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4kgw0qne-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 22:09:58 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8f0867a75ecso442956d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 15:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782857397; x=1783462197; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=71yptdqayaVFzpJtAQzWI+qpR5NfHXrkWbz9ikn7Ryc=;
        b=EiKTsCjdzSp2C5cz4wswYGIXVkrGsw2/+kkXDgxIoKN3tEpEXVr40RpKCmxefphf2i
         /LGMlQWFymPZTJOJTPtavWRLwLd/U+5CGqsdSIzJzmTu2M6uQnqAfU3P7zgnrUoA4p+T
         k5oi16SARKa8H/qqs1TCvFi8pMKOo/FDJLlGsAjeCQcCjlbyh7wVIiaqPE7Np6/J2UsW
         FVDlj+augOldAjrzsd5Ys5m84q86FmECSMe2sXdEEeKAo0LBeCnqcQZ3cIN0Rn5/8q56
         bY5fWxrLJBgdc3kECIHDalFNM6W6E1ajvcORdShcZM4EQZSW77audqWne2kbGLe4eMcd
         9g4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782857397; x=1783462197;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71yptdqayaVFzpJtAQzWI+qpR5NfHXrkWbz9ikn7Ryc=;
        b=F2jgLT5Hg6g/kbc2loYEAyOHQsYonPJmEXvLcJpFdFKukncOC/S9UJlsDuQUtL7qOi
         DwDZHjXg1VeQ0BMqNpHF73a8B0K0OuX2LRORsBMypSm11zmEY3wPjzoxZZ4SrOZTCjaG
         chcAyq28swlH3pT3gQ+IaqWbFohkBsiRgxrtXlXGwOvC2YvvdulXrClsABpoio9CxkWA
         qVatM/6r7PdiY5Ma05MSP6HLftQtzRGguyi8tUfc0MyTO3eWy0w3E3n7CjwrO1hjNJvY
         MbViORTdmUsO5cnsX8eibWaWidymhO7HYHyB1aC/zjpTkhzIVb8bXpGWXVAjz5IfnNik
         Ys4Q==
X-Forwarded-Encrypted: i=1; AFNElJ8pJpjMc76J6kZrLhcRyq2OW1opgs6kZ8itUAyPONHlYsndDoaET2xk44RN3eZtO7nzwUby6RxeRLaN6cj15g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxiW8ywI+wyeRkb4t9lZRz/XeSj5pB2LJtJNRuLgPrS+SMcigmt
	sOfE79JKFvMuYu9xN3SPPz+D8FsFZnGaleF55585oEP061nRrd5Q9lgACZ4I/kakeeJyc+DafZj
	USkFfJH+jGvugK7gCDxEzs8k/Fru9i3L+wFORqMf8oBP0FkhL4psRyrSnOvrw5rjrqJrAVflsLw
	Q=
X-Gm-Gg: AfdE7ckpTBCB9ShfFxXHeZ088Za10/GgOjahAxA5oLEKdTcm1jEiOECArcKM6XZG6Zl
	U1UmSwx0Mp/jCkmwC+UyI8XEq2V6zOvtyt6o3iiiIEO+vI6iGhFoh8vQ3Q/+SrVJECB+99/P2uM
	Ney6o+za1T2plQqkpo+Fj9I43ITJ9VkLnWeHvbc3vNDZ8LcP3IiJq6jgf4hL0lFsq6gJKUTE5sh
	lS1gpu80peWQm88yOTkk6VrkEnazI0DpixtfneCRIRjKltYBiBdB4UqKfrJDgzLPzoZ13BE8QRq
	brsAJNymRE4DddBGqPglp0gRoDCYhSLhnrPqNyfPo3tH+sWy85PHgBAOXVa4CLsl7TbFJ2bA5PF
	iobA3OTx9hM2F+oEYop78u7KwIBNzwU4tLQvAHLYuKE2swweM2npXXKCPCdH3zg==
X-Received: by 2002:a05:620a:468c:b0:92b:6805:918a with SMTP id af79cd13be357-92e6d926a2cmr434241585a.66.1782857397378;
        Tue, 30 Jun 2026 15:09:57 -0700 (PDT)
X-Received: by 2002:a05:620a:468c:b0:92b:6805:918a with SMTP id af79cd13be357-92e6d926a2cmr434238085a.66.1782857396955;
        Tue, 30 Jun 2026 15:09:56 -0700 (PDT)
Received: from [192.168.69.212] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47563d195b3sm11865243f8f.8.2026.06.30.15.09.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 15:09:56 -0700 (PDT)
Message-ID: <caa30078-9dd0-4f07-a206-2dcbd2ba09a1@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 00:09:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] gpiolib: remove linux/gpio.h
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Frank Li <Frank.Li@nxp.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Greg Ungerer <gerg@linux-m68k.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>,
        Yoshinori Sato <ysato@users.sourceforge.jp>,
        John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
        Linus Walleij <linusw@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
        linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org,
        linux-sh@vger.kernel.org, linux-input@vger.kernel.org,
        linux-media@vger.kernel.org, netdev@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-14-arnd@kernel.org>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@oss.qualcomm.com>
In-Reply-To: <20260629132633.1300009-14-arnd@kernel.org>
X-Authority-Analysis: v=2.4 cv=Co2PtH4D c=1 sm=1 tr=0 ts=6a443eb6 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=4s3hRJSeHn4rkQlkrse1kQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=M51BFTxLslgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=1tSEMpTH9XP_W59IOagA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: dixHVv-1ElzawT_mUxBepThp0nD6QRfN
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX6pBUdfjgiB7g
 Ycn4KOOE8COixwyCuagMzOkl3jl6UOUaN3y4FlmnNK7HyqW3spfd4EBDTMj6Gq+LAxuamTvac7M
 tyUct3i2AqG2dgMQ7904Kb5eAn30n7s=
X-Proofpoint-GUID: dixHVv-1ElzawT_mUxBepThp0nD6QRfN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX0C2VyfXd3tDY
 aQ8HEPHqaUkvmvKO5ssoz5nDq7fbjKiS9/T/ccs1KJT5KohsPR2kaD9p/29gNCLifDIXlHy7ri0
 l7tp/0qCMabExSjx8rgIbaqanaVpxwmv7CgnhlO79K5C6e8IvTSSwxVuc9Gk5FZomrIu79ya4Ej
 F6uwsBasd8o5DVJQvo70YECUzLouxnv4NBWt8VnpQdD9b5SkVw5aM/PPuJHThzbhylexyp3aOrl
 6+hlE3QzGVUcCTOMW3xlpejEdCIkJfSXGVFOPXeZJ0Icv13lDtgB8Og0VGASDZ0SIPcsgbCIlmF
 xop1cYD03uhWp+ZMTqtxFAV4qLc/NaozTJGRUgFrKiB0c7fPuVdiA5ab2f7iSxmQreXY+VEk63P
 cAezAiBsl3+UxpsVgUOv0dSwAOgdmq4Msz750fEf/Nqt/mpbXSxFFFS8ufend0dQrbzT0kVxnPZ
 KIeZEc3pf7ZeG8D8LqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1011 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_150958_887421_D30A3BE4 
X-CRM114-Status: GOOD (  12.19  )
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

T24gMjkvNi8yNiAxNToyNiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBGcm9tOiBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPgo+IAo+IEFmdGVyIGFsbCBvdGhlciBkcml2ZXJzIGhhdmUgY29u
dmVydGVkIHRvIGxpbnV4L2dwaW8vY29uc3VtZXIuaAo+IG9yIGxpbnV4L2dwaW8vbGVnYWN5Lmgs
IHJlbW92ZSB0aGUgZmluYWwgbGVmdG92ZXIgYml0cyBoZXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCj4gICBNQUlOVEFJTkVSUyAgICAg
ICAgICAgICAgICAgICB8ICAxIC0KPiAgIGRyaXZlcnMvZ3Bpby9UT0RPICAgICAgICAgICAgIHwg
IDQgKy0tLQo+ICAgZHJpdmVycy9ncGlvL2dwaW9saWItY2Rldi5jICAgfCAgMiArLQo+ICAgZHJp
dmVycy9ncGlvL2dwaW9saWItbGVnYWN5LmMgfCAgMyArLS0KPiAgIGRyaXZlcnMvZ3Bpby9ncGlv
bGliLmMgICAgICAgIHwgIDIgKy0KPiAgIGluY2x1ZGUvbGludXgvZ3Bpby5oICAgICAgICAgIHwg
MjIgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgNiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDMwIGRlbGV0aW9ucygtKQo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGlu
dXgvZ3Bpby5oCgpSZXZpZXdlZC1ieTogUGhpbGlwcGUgTWF0aGlldS1EYXVkw6kgPHBoaWxtZEBv
c3MucXVhbGNvbW0uY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
