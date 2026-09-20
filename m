Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DCC0C982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 10:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TFD6vTDfdBQvunSE3nQt8DF9nS8ghSeBMrXWVmQQWE=; b=mFGRcU+9Qdo8PG
	qYzA7ILz5j34e8scEIMzxg81Hiy44o8mMA/zNE38qC//c/AsGlFuScTXMGN+eM1ZknY8m2C93IwID
	DdKbFPwmEJQzrTNzlH5b/gWg4/hfL57mcfZsxP+8L/a9Y+XkvbyU8iGfgy/OpiXHwLtRB/unZvh8o
	2BvoM3Q3GERK6WBUTCztXyl+n8frzkpksbQgdiAU7BZxodkfBqE7rcDz72vayjz2ck17OHXxYyy5S
	NAXyJTFPsDu6gYY/Tx1o9vQmewOT/KV+cbM4B5EpzW/26Sa0A37ktbc12h23r/+i2w1GQi9hqoFjF
	Z44DEIXDougKybvDvEzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8F8X-0000000HIAd-1ZaK;
	Sun, 20 Sep 2026 10:51:09 +0000
Received: from ms-2006f-snip6-8.eps.apple.com ([2a01:b747:3002:206::3b] helo=outbound.ms.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8F8V-0000000HI9t-0pYz
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 10:51:08 +0000
Received: from outbound.ms.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-west-3a-20-percent-0 (Postfix) with ESMTPS id 7DD80180010D;
	Sun, 20 Sep 2026 10:50:59 +0000 (UTC)
X-ICL-RepId: 01a0be70-cfe5-743c-a40f-0bfcbd3f9845
X-ICL-Out-Info: HUtFAUMEWwJACUgATUQeDx5WFlZNRAJCTQFMHV8EUxxCDFYAXRcOVk1KF1UYREVRMFAbXwJCDxwTVhUTC1NWWxNVF0YJGQhdHRkKUFAGXRIYXBRcUFgeRhJWDV0JGQZBXlAbXwJCDxwTVhUTHUMZDysISgRDB0UCXgslEwlTVlsTVRdGCRkIXR0ZFVoJCldTARROWgdUJ3whCSdJXHxech0KRhMZThtXTVAbXwJCDw==
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1789901463; x=1792493463; bh=WBhLPgrlGgFAfYUVRbZshd/sQEaG2cdzCoRPJ5AG9Bs=; h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:x-icloud-hme; b=yLmHyOIMBXapUE8pdFmj9skk9bN+eIqJWIPjk5wyB8bYY9ZAcKaBKTuUL1x03dYWOr4TruMjAH3tSLFiFsWi5NDf30P9yVP9nQ5YNrOu1UUCIx1fcnnK9/pHSlw8vdDo4OqroY4uhnsXR85rqSyeb/NxjLduSqt71A2nnNcngDAhyq+wb7ES6IEo7hnlBfQa7xtPShLuPIQcvGUvy3xsDD42H8b+KaRSj+EgWXMm5DrcV5KLYpweLEXxQLB+q3GmKWyXw4mm+KDkR58sWKvNxBPrnSBdtP5ATBMihNNIGssxxDXeEsTWRLqOV9Igr/vRFWG9To15Z+BLkbYzd0HI8Q==
Received: from m3 (unknown [17.156.208.39])
	by p00-icloudmta-asmtp-us-west-3a-20-percent-0 (Postfix) with ESMTPSA id CC0AF1800105;
	Sun, 20 Sep 2026 10:50:53 +0000 (UTC)
Date: Sun, 20 Sep 2026 12:50:50 +0200
From: Sofus Forstreuter <sofus.c@icloud.com>
To: Andy Yan <andyshrk@163.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 02/14] dt-bindings: media: add apple,avd
Message-ID: <aq-6ijcLNQ0_z1K5@m3>
References: <20260918-avd-v1-0-49977931f455@icloud.com>
 <20260918-avd-v1-2-49977931f455@icloud.com>
 <490c0413.5a83.1a0bdde450c.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <490c0413.5a83.1a0bdde450c.Coremail.andyshrk@163.com>
X-Proofpoint-GUID: TUTuRvhIyPU2YPOdSF7_ItX2FwVbVyXC
X-Proofpoint-ORIG-GUID: TUTuRvhIyPU2YPOdSF7_ItX2FwVbVyXC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIwMDE1NyBTYWx0ZWRfXxID0Ug9pFl2x
 Gt2DeK68aaq7XpmlYV2+WNUtQB8P5O5RNnIMRmLz0+j+Qnrcwt69Ih8cYGPBwBPHwzmZAPA+tMP
 iIDuJp90DvmavgoeZq6zTq6OB8Rdq/UaBUa1mrCybaXAK74bXCTg3+YQYqaVdQA2VT7HEWqIGfH
 oihwb0jXk+C+y41V0mSxZboLLBKOP62zrBLU1CxCO7/2EVqof8gQZRET3n396Mxr3I4ELmMiscx
 S48DXCkysUvpTbPRvc8QUlnkSGq7c+KD85p6eUQ2UwZFJcLfierddp3MjgjTSbUO2kdG10is8ML
 xF2lh27FPAsAQpEy40GHii5ZeAXH3nNZGzkM2DzLjqxR7BwseWOSOL4iobHsPk=
X-Authority-Info-Out: v=2.4 cv=ZMLaWH7b c=1 sm=1 tr=0 ts=6aafba94
 cx=c_apl:c_pps:t_out a=kRaGL2Q7qLiahLf3O6OaIA==:117
 a=kRaGL2Q7qLiahLf3O6OaIA==:17 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=x7bEGLp0ZPQA:10 a=kLM9Tyy99jAA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=v3ZZPjhaAAAA:8 a=WH1DJqfT7gfZrbUwWXkA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=sptkURWiP4Gy88Gu7hUp:22
X-JNJ: AAAAAAABK/4gmxiVowMzIMHXMSy26Rhac+DXdQy6vWvpsOjoMG5ChvcQxkIW75BW4NzgkT4ijfeodeZKHGA+3zfDWuXSWEkgKCZu3+5UEWxxFk3ACHig4MA4J3omOEPweTH3l3ZAnI27iiLAHGS+Zng8MN0ADe+jGtlSAx14k4wo9TvXgPpJmxGwfgcuO0xIfuLLy5iLo94wE1XLoN+vcNXbEAcllKLmxa4Kg2KajS3uJk0IRX+zaM3xJcXBExMVf4icWnA3rJkq91iRpu8E7oQ6z2smV4Xz5gyTGJ7DmNmt+C5mhyxDxfRZs3v9Phu7ipaByTKUX7ep7AnKy/ckFbDg5VX0g3DF9G2VSA7VRCbP6tXTGXgJcPXsAfOudSvj8FCAGL4fGHVtl6k8oBNOObSFi2O36jt9DSic0u84BoGCpWjpvo1n4X6BirBuaN/hzfnsq0w8sMOlSl08PpyAxmiEFtBdbIIzZp5xaVtTlStYNVQnYd+CthVRJdKXZRXr+xuwoMEXcHXLhNdeJGRjC5q1XMHlzrGxM/KeAyVjMB5J8y8I9awlYZV/3JCzjiurBnE530nKnqawJzSWTTJaX/gYX31lx2OX93jXd4ourmN9OfHQqsmgkMLBHIFMoF/45PqMSsM5z5JoBNZKIx1nn9t/IjayMiLI66zLBSVPV5PgdHYT/FaUKpuUrF1/QR0bX37m4x5nRazEAc/skztzF+2+Bnx8JehNQFvcrgcbE70773p+FWv7WIbuX4x/7q04tcBGuHhxlzvV6Qo1C423W5OzVtxOkCWKE7XVmyjd9T0bYo0Wc1H1LOfaG8hvNHwDifxUlDj95Dc3W8yQU9DAPKymZnhB2AQDEFqZkQAEGa0vzpxf2USs/SLhcVQ+8gebzq1u6eZkrgUr7ftbUeUcYIQc3xIAGEP8KrDG8sNnRCgaoZgeVJ3YA5yCalm0SzQKpnyK+vodFriVnwsMmGPdycVe/Znuhtg
 4Sp0WO1J5Nzme1e1NJLyK151VFr3ye+54PDXRNOXrTXX7ECwAD3zhOWIsZnf2fkGAyhC02lHz4W2ZO/BN56OEc0S6uhjnY0ak7Q1twCzliz6ql+8OePQezAqZRzLbu9dpRlFRvKfe0I5iMmvZRN6I+02GmT3NY3WyoNtsYS/NZMwFRIvMJpNhK4XRdC3z68OISgtx3b6rErWteg8x01oYew9drjl9f0WYk873qZfA0pLqX7w+ilfLZmvWESjur5U7xW6YsDNJJoBgKq7/r0TqX843zo3uSasjrX7ZBpO4eurUNLbw3Sq93EML9c+Is7CSzdRN98C7r4SZ1oniUytxqyKj2bMsdAh0HLTAX8dsMPGpKENnyHo2jtlia3CkJ4PUcsGWlJRNdqhU/V4UyxoKWJzmXx/7s3e9ILMuaqmZk+G3rio6EgswHQiU4w2JdJDqzw+PxsVEMvYjfXwGc6KmHA0THVN7nJXUTA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_035107_288021_6581E8DF 
X-CRM114-Status: GOOD (  11.24  )
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

SGkgQW5keSwKCk9uIFN1biwgU2VwIDIwLCAyMDI2IGF0IDA0OjEwOjU1UE0gKzA4MDAsIEFuZHkg
WWFuIHdyb3RlOgo+IAo+IEhlbGxv77yMCj4gCj4gQXQgMjAyNi0wOS0xOCAyMToxNTowNywgIlNv
ZnVzIEZvcnN0cmV1dGVyIiA8c29mdXMuY0BpY2xvdWQuY29tPiB3cm90ZToKPiA+RG9jdW1lbnQg
dGhlIEFwcGxlIFZpZGVvIERlY29kZXIuIEEgaGFyZHdhcmUgdmlkZW8gZGVjb2RlciBwcmVzZW50
IG9uCj4gPkFwcGxlIGhhcmR3YXJlLgo+ID4KPiA+U2lnbmVkLW9mZi1ieTogU29mdXMgRm9yc3Ry
ZXV0ZXIgPHNvZnVzLmNAaWNsb3VkLmNvbT4KPiA+LS0tCj4gPiAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9hcHBsZSxhdmQueWFtbCAgICAgICB8IDExMiArKysrKysrKysrKysrKysrKysr
KysKPiA+IE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAxICsKPiA+IDIgZmlsZXMgY2hhbmdlZCwgMTEzIGluc2VydGlvbnMoKykKPiA+Cj4gPmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvYXBwbGUs
YXZkLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvYXBwbGUs
YXZkLnlhbWwKPiA+bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+aW5kZXggMDAwMDAwMDAwMDAwLi4z
NGE0MTI5ZDZhNDYKPiA+LS0tIC9kZXYvbnVsbAo+ID4rKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvYXBwbGUsYXZkLnlhbWwKPiA+QEAgLTAsMCArMSwxMTIgQEAK
PiA+KyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1
c2UKPiA+KyVZQU1MIDEuMgo+ID4rLS0tCj4gPiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9z
Y2hlbWFzL21lZGlhL2FwcGxlLGF2ZC55YW1sIwo+ID4rJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPisKPiA+K3RpdGxlOiBBcHBsZSBWaWRl
byBEZWNvZGVyIChBVkQpCj4gPisKPiA+K2Rlc2NyaXB0aW9uOiB8Cj4gPisgIEFWRCBpcyBhIHN0
YXRlbGVzcyB2aWRlbyBkZWNvZGUgSVAgYmxvY2sgcHJlc2VudCBvbiBBcHBsZSBkZXZpY2VzLgo+
ID4rICBOb3RhYmx5IGl0IGluY2x1ZGVzIGFuIEFSTSBDb3J0ZXgtTTMgYW5kIGFzc29jaWF0ZWQg
RE1BIGNvbnRyb2xsZXIuCj4gPisgIEFWRCBpcyBjYXBhYmxlIG9mIGRlY29kaW5nIEgyNjQsIEgy
NjUsIFZQOSBhbmQgQVYxIG9uIG5ldmVyIFNvQ3MuCj4gCj4gVHlwb++8miBzL25ldmVyL05ld2Vy
77yfCj4gCgpZZXMsIHRoYW5rcyEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
