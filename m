Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12FF2E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 07:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmhjM9hQvkyW3fNDcjKaJCMQr26sXxh8bJ+YIYTML9I=; b=KCLT0/u9shQF0b
	d7hhvKHtv0ZGMmb/ln0ekXYmwqKfdIvpLTxzY9yuNeP+De8I3Kzim2YNq3ACwtnGH9anAcS/mLk0w
	SQSJ5Xc0lAgJD8TxEciLz3hJt0vMfC2mUzK2WFVtxKq/I6odLBouPp17L2xPXlJ8lQNcSVgig4cFM
	8Rggrhd9EDst/DlglqsniL5bx0mXz0HeW/gmkMw5EFuXwULf57MLrnx6WoLVmqBLnGSPZjNqCd8CV
	+pQVAH1ALskgdxL8wbnsRj5VtexiRlawxktOg/KTaaOC8cmkZoPtha2glEJZ57MxOZltcvWb68X7f
	X0fWWg2bKJrM1IikViSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRwO-0000000CZaF-3lDK;
	Tue, 17 Dec 2024 07:24:24 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRpX-0000000CY9z-0IQH
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 07:17:21 +0000
X-QQ-mid: bizesmtpip3t1734419815tfi4l8w
X-QQ-Originating-IP: FATXyyRXnHdEfrhFtUmXKV4mt7pDLQPrUgQlNZEBCLc=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 15:16:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4968437046563404095
Message-ID: <98F610891BD5E021+55967d60-9a5b-4b19-8005-f10f51bfe417@radxa.com>
Date: Tue, 17 Dec 2024 16:16:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/12] arm64: dts: rockchip: Fix proparties for pmic
 regulators for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-12-naoki@radxa.com>
 <0b6a7a7a-ff5a-4897-a283-6bf582dd1d79@kernel.org>
 <DC42478EC0DFB00A+6e374774-07d8-493c-9f2f-e7106d1f2d61@radxa.com>
 <3313fc80-73b9-4063-8076-64e65c5d5921@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <3313fc80-73b9-4063-8076-64e65c5d5921@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NQDSFSrlZSaiM2bjtiHdvzs93ID/yCWR2hCy8Tzzp1tsx7ecRc3+aVap
	76F/9h06L0T1iDvgAQlzo7SX5sQTbkxL5H2lpsd5/Cc9ukXQgQxzhbiz+BL1pfNZQc/i6JB
	v2Mecv+WJnneAtyHKxOLziFJJSV9hOAEFosIyIpatEqCxPGO/JoPRkrAZivPN8/1DteKQCE
	+pg+zmKo4Duw2CXsY8jwnEzQ4ydRxVhv01s+mRhECqU7mKp4hL2Q4dA+YV3PtO8iZVB7x7Z
	CU5OGM1gWZEezN4oa2DKyaeFf8XXpYHOJdYSN1ggib9nuP+A/MZS8q31pV9yjoB23hX0PiI
	kfV7woqgrmv099iuk/H7m/flhOebBQ7PSTiGN14D/W0lwhKIIJqZfIE7oFZIFp51evbhaJl
	mUDtOpmXjzt8IqD8pJDC01n2k8j5wq5fboSoMVwYJ6FU4qpElHtKmNjlqs5GcIjYnfInQNw
	E4PF3edXEEK+6W1tipoiNChD3bz/cjPc2sJrs7uACa6zMmBk1yxamUZtUcP/dA9w6IhQ0Cj
	XImRfc4aDb/wVU5SnSvTn0juNWVWq32p2dEkPZuSDccaOLUIdAJ1le6XhfFoovYT5t+q9Wx
	lg6Swyz4cSRUtqZj/nOJWTIUA25pv+OoZIgqzKpHmwpmtAZ35SiXjA3k9CiHttawHYQHTQU
	IiK002azv9+67GocBSQJaG57eWIm1w5lMJk2XswYfuh/SQ4nvncd/hIlpoWTcj7E4cxRPa2
	JwXk0CM8p8oHmHO4f5VwG8REjpco5vput/KDg3sDuFza9cQQdl3RfFbsdxUzyTZZZPDxMMr
	zPGMOne+VEdbSXBDnHe18FGRmANX9HOJ/wCjUEabsNGGci3UgPRXru3LK3Z5ks3qjkhjbzo
	8t58GxksKxeIogBjU1hafJZmYdca/p8Co9nDxPChkiRNNxPNjpp3d6NG9HgCDvwZOcJX2RY
	rZd0=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_231719_740303_117710F0 
X-CRM114-Status: GOOD (  10.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 12/17/24 15:24, Krzysztof Kozlowski wrote:
> On 17/12/2024 01:43, FUKAUMI Naoki wrote:
>> On 12/16/24 22:41, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>> Fix proparties for dcdc-reg7 and nldo-reg3 regulators to match with
>>>
>>>
>>>
>>> You have so many typos in almost each commit msg. Here both in subject
>>> and commit msg.
>>>
>>> Run spell check before you send to the lists. Don't expect the reviewers
>>> to be your computer tools.
>>
>> Sorry for my poor English. I'll check it next time.
> 
> I am not pointing out English. I am pointing out not using standard
> tool, spellcheck, to fix issues in effortless way.
> 
>>
>>> Explain what is being fixed here. Why would you prefer to match with
>>> vendor kernel?
>>
>> Not my preference, but the only reference.
> 
> Then why the reference is correct? Provide some arguments why this
> should be changed to the "reference" and not the "reference" fixed.

Are you serious?

Why do you think the current code is correct? It's written by me, typo 
and copy-pasto generator. Need more argument?

Best regards,

--
FUKAUMI Naoki
Typo and Copy-Pasto Generator

> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
