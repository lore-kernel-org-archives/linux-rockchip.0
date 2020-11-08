Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB69EC388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 07:41:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D5D320719
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 07:41:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="P2vxIHFf";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=suse.com header.i=@suse.com header.b="CeOmsMah"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D5D320719
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=suse.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kWvoPuvimkmOMDS/KZX08y5H94TapQAB4GogpubUmag=; b=P2vxIHFfpKsAOmlMrsI7CzKYA
	VASnfFutYNIiygKLzjJaX1sEdiozF3g7FwtcPMcOM5zRrZFvEL2lrnJ0B9DjNF5dp4NEenBC9DvUr
	7VEE8GBZiMGqwJMZlnqcaD1NfOOHyzoji3iRTrEGBGECpZz510T6Wz2MNP9cvtEMimOlLNdkr9GhM
	o6olQz3Txr23Bck8lBGsGAKtLJtX1hkR+nvsUhCpKEtbTJT07lK3ac7g/EU8hnSQdpy23WgY3+uVI
	vrVbPwvLe0sD200+kNU2ly/g9H1mYFQu4PM93I7OAfSfFZ9U1C0f2KFWMW3mR0Rm8Lo6jFn5810pH
	L7QqAljFg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbfKC-0008Jl-29; Sun, 08 Nov 2020 07:41:20 +0000
Received: from de-smtp-delivery-102.mimecast.com ([51.163.158.102])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbfK8-0008J3-Ti
 for linux-rockchip@lists.infradead.org; Sun, 08 Nov 2020 07:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1604821275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=NhqpOqAo7nuDyRSjDt9mZiS8lxpD7zqqL8WEayG68Vk=;
 b=CeOmsMah5u9O3HtBk1BG8t6BcdgVCkAVJ28+/AxJmBjcStXnI46lkYQrcSg7EBeqsF6svR
 fL6TSLHQocKrAtUUhG/Yb02WOLf2PCU95snEKvzhQrc5NMSwFYiqu63VjvJ8S0hCRg8Bz6
 3NgFZBxcRaPNWK8swJLHX+IcCfSwr5w=
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2050.outbound.protection.outlook.com [104.47.13.50]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-35-FPwOMZgbP3-olGVU-h6xcw-1; Sun, 08 Nov 2020 08:41:14 +0100
X-MC-Unique: FPwOMZgbP3-olGVU-h6xcw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GE27Vs34qgxEGqRHFzKCXtO77alT49S8SXWDZwxHOq+LBsTNx51sND09qZGH8XM58C9wdvuPzKecaGoZevpNhw0HsusouL++sDJpBiIxbPs9TQeBrDqr70XKUObbZyy0mIL6vgzmxc7oiD9N3XPiPa271didvrVCg88d0QvcX/3CzD6S2wVr6r857SY53y2TwLwg90GDXCxZMRIEE2qR4KsZdMf8nQsr1xFeEQ6ZkXxVaV9gMADN6NWZSZ6/g06WDuo89ksWdMkmkTfK3rtzbjwyhehxk9TaYsTbNjurhosv/YmdThc7sMTD8QarMFgss3zCmf2da3OzEtnir+jCmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTCjQ0hMAfiNo508p3pCmUg+YkysWlT8JcSoPcolyks=;
 b=JjQhvFJQ02TFFGoFZQ/4X/KEiFjIrQ6bkgFvnw0hpdAeOw7qWQxfHnzLXmFemir+5u8UPuVRXLIqjXaB5RtiwJUHBXljOLDrgSlUdzo1tw3BtNjoJ5Jk5RjGPx3Ji9aHGPNvSeU4ZRbQc2PHBVmEDVft2ULrZBzgnKiKSHVo9lsbgi2emOjPQRAbhehkEmlNZ1hA3VF08q0pfIGOimteC9s9DIyPc6yOBbTAxic4QgUvw58ux5Sfo4fX+jDz0ETDKTWrBqvzmd0QDiMgkxn6kxYGuyVWE0/JEHfQ5hNJxr88CN4aZDbHuA4HK5zNI8EmuqnmAe6gc537EiW4dj7mpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=suse.com;
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com (2603:10a6:102:f1::19)
 by PR3PR04MB7244.eurprd04.prod.outlook.com (2603:10a6:102:8e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sun, 8 Nov
 2020 07:41:12 +0000
Received: from PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7]) by PA4PR04MB7533.eurprd04.prod.outlook.com
 ([fe80::545:8a04:2a5c:f4c7%6]) with mapi id 15.20.3541.023; Sun, 8 Nov 2020
 07:41:12 +0000
Subject: Re: About regression caused by commit aea6cb99703e ("regulator:
 resolve supply after creating regulator")
From: Qu Wenruo <wqu@suse.com>
To: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <c13f1683-97c9-40b4-f740-73eaceb7c98f@suse.com>
Autocrypt: addr=wqu@suse.com; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0GFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPokBTQQTAQgAOAIbAwULCQgHAgYVCAkKCwIE
 FgIDAQIeAQIXgBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJdnDWhAAoJEMI9kfOhJf6oZgoH
 90uqoGyUh5UWtiT9zjUcvlMTCpd/QSgwagDuY+tEdVPaKlcnTNAvZKWSit8VuocjrOFbTLwb
 vZ43n5f/l/1QtwMgQei/RMY2XhW+totimzlHVuxVaIDwkF+zc+pUI6lDPnULZHS3mWhbVr9N
 vZAAYVV7GesyyFpZiNm7GLvLmtEdYbc9OnIAOZb3eKfY3mWEs0eU0MxikcZSOYy3EWY3JES7
 J9pFgBrCn4hF83tPH2sphh1GUFii+AUGBMY/dC6VgMKbCugg+u/dTZEcBXxD17m+UcbucB/k
 F2oxqZBEQrb5SogdIq7Y9dZdlf1m3GRRJTX7eWefZw10HhFhs1mwx7kBDQRZ1YGvAQgAqlPr
 YeBLMv3PAZ75YhQIwH6c4SNcB++hQ9TCT5gIQNw51+SQzkXIGgmzxMIS49cZcE4KXk/kHw5h
 ieQeQZa60BWVRNXwoRI4ib8okgDuMkD5Kz1WEyO149+BZ7HD4/yK0VFJGuvDJR8T7RZwB69u
 VSLjkuNZZmCmDcDzS0c/SJOg5nkxt1iTtgUETb1wNKV6yR9XzRkrEW/qShChyrS9fNN8e9c0
 MQsC4fsyz9Ylx1TOY/IF/c6rqYoEEfwnpdlz0uOM1nA1vK+wdKtXluCa79MdfaeD/dt76Kp/
 o6CAKLLcjU1Iwnkq1HSrYfY3HZWpvV9g84gPwxwxX0uXquHxLwARAQABiQE8BBgBCAAmAhsM
 FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2cNa4FCQlqTn8ACgkQwj2R86El/qhXBAf/eXLP
 HDNTkHRPxoDnwhscIHJDHlsszke25AFltJQ1adoaYCbsQVv4Mn5rQZ1Gon54IMdxBN3r/B08
 rGVPatIfkycMCShr+rFHPKnExhQ7Wr555fq+sQ1GOwOhr1xLEqAhBMp28u9m8hnkqL36v+AF
 hjTwRtS+tRMZfoG6n72xAj984l56G9NPfs/SOKl6HR0mCDXwJGZAOdtyRmqddi53SXi5N4H1
 jWX1xFshp7nIkRm6hEpISEWr/KKLbAiKKbP0ql5tP5PinJeIBlDv4g/0+aGoGg4dELTnfEVk
 jMC8cJ/LiIaR/OEOF9S2nSeTQoBmusTz+aqkbogvvYGam6uDYw==
Message-ID: <52106dff-aa57-da4b-dcc3-3dedba82a3e8@suse.com>
Date: Sun, 8 Nov 2020 15:40:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <c13f1683-97c9-40b4-f740-73eaceb7c98f@suse.com>
Content-Language: en-US
X-Originating-IP: [149.28.201.231]
X-ClientProxiedBy: BYAPR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:40::41) To PA4PR04MB7533.eurprd04.prod.outlook.com
 (2603:10a6:102:f1::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [0.0.0.0] (149.28.201.231) by
 BYAPR04CA0028.namprd04.prod.outlook.com (2603:10b6:a03:40::41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Sun, 8 Nov 2020 07:41:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99db47c2-45bc-4fc3-76de-08d883b9aa71
X-MS-TrafficTypeDiagnostic: PR3PR04MB7244:
X-Microsoft-Antispam-PRVS: <PR3PR04MB72443360FEFA100126728717D6EB0@PR3PR04MB7244.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nkrf5ZINw9NiP+KnG9PkleFec3V8UlkdsTGa066ZAQ4fQQ4zSFC2XT5I6qDrAwjyGR7Qry4nNryjYv/kfJVRehsPAAiHUWo0sLSzir+EzYBxLgu3uASP3RiA1Z5dIwXNvpuN2rQJezZpJqSty9w3/mwf1BMHEJI7VUgqf9Bik0rOAuil9733+cAkMmAaNrKBxvZ2PIpFpgvD35nHb7SgCmYfYZaipLg7phcBOhwPUbGgxeLUtNIzE6DEAMdyZ+fTYCNbWLI9/kmstA6orvUFVRARCCj/V/Jbkv2saAXemphikaD4FI/RMhIvfgFuk56YniS5tdAraBIfRgu8ykSVXlizzlBhxUrSgqvlH2X7cQi3/SK9lf9+X1wVIofHdUT3c/zup4/3OIa1PKZUjUSXZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR04MB7533.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(39860400002)(376002)(346002)(396003)(5660300002)(31696002)(16526019)(186003)(36756003)(52116002)(86362001)(478600001)(31686004)(8936002)(2616005)(2906002)(6706004)(26005)(956004)(6666004)(66556008)(66476007)(316002)(16576012)(110136005)(6486002)(83380400001)(66946007)(8676002)(4326008)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: kUgRCzHgMXYjnaZ2vZnAY883UmfCqiw+rstOZlb3rdoF6qmA7yVW7rhujpBtrJRRFXvrDcaoz+sXaHGkCHUVgUwwjkkmJ3q8AvPc3P3phHZd6VWRn8VxGs+Ns5dn1PMFNHHOm1MQ3aarAGgx4WwLCDfcGlnUepPALOj3LUMvbLkzj1AcFwIO4XjfWrBwOF5Z1trEPuVav1xrNsASuCOgao70c0Iv2qUFFxaSSVZ9u+PI/qgg5fgyWRo5t3TSSxaAUFFx/9KsOJq299VywsoN43HGss8qvahOruUcjFMKZ0+KzKUcQWdQKrZ9a1e5Xyq5qp8wmSMMQeYisHTRk3KVVvh237A/OR2DXQl7Im/htLRvl2Y0FeRNXfpkkg7lbPsxJ/kTM/NIPK94OFkZXxW9hIkI4eBZAfAjHTZjMUXMdj4mheI3fmHw+/6OK6a+6+uhflRaRoi4jcP3CFSuBrBskI7ocnW6LOCLodkXiqY8PiX2zm+oarzTKXGyNLVmIO3khQE5GEbVfVejnrHH4Vj2xO390eaC6OIofw4rCMb+ZRJZSm5rFTsJWHWMgSIV0T3xmOxOIdWjHvaqG5Uo19z174dtY2uP/0KtjBuOY42y0M5kwQJ2h6Mg+T6Nh0QIjjOPfFwSlw7fixJClvx8flZ7yw==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99db47c2-45bc-4fc3-76de-08d883b9aa71
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7533.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2020 07:41:12.6010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f506+diTdoVe0d2jakoV2cK1IvXl5cYEfa7usG18Or78rCOJEF2MP6ZcCdzQeJfc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_024117_850959_8A7E0D8E 
X-CRM114-Status: GOOD (  18.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, broonie@kernel.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWxzbyBhZGQgUm9ja2NoaXAgYW5kIGRldmljZSB0cmVlIG1haWwgbGlzdHMgdG8gdGhlIENDLCBq
dXN0IGluIGNhc2Ugd2UKbmVlZCB0byB1cGRhdGUgdGhlIGRldmljZSB0cmVlIGZvciBSSzgwOC4K
Ck9uIDIwMjAvMTEvOCDkuIvljYgzOjM1LCBRdSBXZW5ydW8gd3JvdGU6Cj4gSGkgTWljaGHFgiwK
PiAKPiBSZWNlbnRseSB3aGVuIHRlc3RpbmcgdjUuMTAtcmMyLCBJIGZvdW5kIG15IFJLMzM5OSBi
b2FyZHMgZmFpbGVkIHRvIGJvb3QKPiBmcm9tIE5WTUUuCj4gCj4gSXQgdHVybnMgb3V0IHRoYXQs
IGNvbW1pdCBhZWE2Y2I5OTcwM2UgKCJyZWd1bGF0b3I6IHJlc29sdmUgc3VwcGx5IGFmdGVyCj4g
Y3JlYXRpbmcgcmVndWxhdG9yIikgc2VlbXMgdG8gYmUgdGhlIGNhdXNlLgo+IAo+IEluIFJLMzM5
OSBib2FyZCwgdnBjaWUxdjggYW5kIHZwY2llMHY5IG9mIHRoZSBwY2llIGNvbnRyb2xsZXIgaXMK
PiBwcm92aWRlZCBieSBSSzgwOCByZWd1bGF0b3IuCj4gV2l0aCB0aGF0IGNvbW1pdCwgbm93IFJL
ODA4IHJlZ3VsYXRvciBmYWlscyB0byByZWdpc3RlcjoKPiAKPiBbICAgIDEuNDAyNTAwXSByazgw
OC1yZWd1bGF0b3Igcms4MDgtcmVndWxhdG9yOiB0aGVyZSBpcyBubyBkdnMwIGdwaW8KPiBbICAg
IDEuNDAzMTA0XSByazgwOC1yZWd1bGF0b3Igcms4MDgtcmVndWxhdG9yOiB0aGVyZSBpcyBubyBk
dnMxIGdwaW8KPiBbICAgIDEuNDE5ODU2XSByazgwOCAwLTAwMWI6IGZhaWxlZCB0byByZWdpc3Rl
ciAxMiByZWd1bGF0b3IKPiBbICAgIDEuNDIyODAxXSByazgwOC1yZWd1bGF0b3I6IHByb2JlIG9m
IHJrODA4LXJlZ3VsYXRvciBmYWlsZWQgd2l0aAo+IGVycm9yIC0yMgo+IAo+IFNpbmNlIHZvbHRh
Z2VzIGZyb20gcms4MDggYXJlIG5vdCBwcm9wZXIgcmVnaXN0ZXJlZCwgdGhlbiBpdCBwcmV2ZW50
cwo+IHRoZSByb2NrY2hpcCBQQ0lFIGNvbnRyb2xsZXIgdG8gZmluZCBpdHMgdm9sdGFnZSBwcm92
aWRlcjoKPiAKPiBbICAgIDEuODU1Mjc2XSByb2NrY2hpcF9wY2llX3Byb2JlOiBwYXJzZV9ob3N0
X2R0IGVycj0tNTE3Cj4gCj4gCj4gSSBjdXJyZW50bHkgdGVzdGVkIHdpdGggdGhhdCBjb21taXQg
cmV2ZXJ0ZWQsIHRoZW4gdGhlIFJLODA4IHdvcmtzIGFnYWluLgo+IAo+IElzIHRoaXMgYSBrbm93
biByZWdyZXNzaW9uPyBPciB0aGUgUks4MDggZGV2aWNlIHRyZWUgaXMgb3V0IG9mIHNwZWM/Cj4g
Cj4gSXQgd291bGQgaGVscCBhIGxvdCB0byBmaXggdGhlIHByb2JsZW0gYmVmb3JlIHRoZSByZWdy
ZXNzaW9uIG1ha2VzIGFsbAo+IFJLMzM5OSBib2FyZHMgdG8gbG9zZSB0aGVpciBhYmlsaXR5IHRv
IGluaXRpYWxpemUgUENJRSBjb250cm9sbGVyLgo+IAo+IAo+IEJUVyBJIGRpZG4ndCBmaW5kIHRo
YXQgcGF0Y2ggc3VibWl0dGVkIHRvIG1haWwgbGlzdHMgbGlrZQo+IGxpbnV4LWFybS1rZXJuZWwu
IEkgZG91YnQgaWYgdGhhdCBjb21taXQgcmVhbGx5IGdvdCBlbm91Z2ggdGVzdGluZyBmcm9tCj4g
YXJtIGNvbW11bml0eSwgZXNwZWNpYWxseSBjb25zaWRlcmluZyB0aGF0IGN1cnJlbnRseSBBUk0g
aXMgdGhlIGJpZ2dlc3QKPiB1c2VyIG9mIGRldmljZS10cmVlIGFuZCByZWd1bGF0b3JzLgo+IAo+
IE1heWJlIGl0J3MgYSBnb29kIGlkZWEgdG8gYWxzbyBzdWJtaXQgc3VjaCBwYXRjaGVzIHRvIGFy
bSByZWxhdGVkIG1haWwKPiBsaXN0cyBuZXh0IHRpbWU/Cj4gCj4gVGhhbmtzLAo+IFF1Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
