Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B171C61D92
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8UGB1xF2lxt0uhN1e6SIdiFUpStpQh0+wgPfDxjeO1o=; b=Grcec3/Xd53Gidwr/7ls04d46z
	5W8BAJF66GBy5Lhf0vgOVTsKf54jOfjxLNimNYFSX2ZtBQ3lipwfraZpRSoxm0xkejKq/zPEsCPU0
	3LX0dVtYYWwC5GKXCiHsiTaBD5sGPZh/+yQ0+IQ4kMDYjczqrljW7ZI3h4w4nO7c2HQDRfTLGloOq
	MPxOicswmkWC2nXiN2elwB5BKQWTCgrV4315MGnTUs+puhynDcsiBaRIJag8R8LfU0xPZVk62VJOJ
	ud/D5u77hi3xFh6C6fLkzyS2O1GJMZa+HJ+bObxqp683XJykGcttEiL/2esfEpcYDfuEUBOKC9I5b
	ddbrLEIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5j3H-0017ZB-0U;
	Wed, 22 Nov 2023 08:57:43 +0000
Received: from mail-mw2nam04on2062f.outbound.protection.outlook.com ([2a01:111:f400:7e8c::62f] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5j3D-0017Y3-2o;
	Wed, 22 Nov 2023 08:57:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dm3mdAmFcGkTc+swHp6EDuzJQYjt8UOYTqhNQ+3n5fXTOqjW8fxqL/vLYTzoNaNuhC7Jd1gohHcBih0EzqkUHh6ezPoRXSsEXI1Z+ZF++GQaZOPslO1yqstlvElb81er0whPiBHqkL7fsWqXO0NgEhGH+rTN7Yj7mJSc0UP6PhL97apetehCUpg4nkw9gIHettVf68zVGZZq5XDGsYKCVgLDToBrk5PIKA2v0jpnCrIPynx2RSdG03z9SsahIWjaRzfPkoo1e+vg6y+UwzzskS962dEQeF4gNq+z2/jk7u79AS0Eztsnu0ffNYoCuPZPqjrNng0zByxlCJKA4M2W+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YYrpxRvg4FWGVlybxyXoe3jDe/613HXdKseNyXgGr0Q=;
 b=SkDgW1mYNnYrjeuUPYJvYck3kzaQXfN65Z1kcyGaOIZx98R0kdUTOBj4P2PtMFiE83ZOg4kag3vIS0xbhs07y4tAuDa5A7Xk8hYJ6MhJv+jghmocd0RloclhUgkh+DM5BnlrOW9TehqIWGexs78+xIjbCAxWR5DH8AkLFuS1nBLfSoQTFufL0LZ4OMR1AL6fSN9tZRSPb4QiHskxK901BnxYAIiaqXSl6sLO+8rCQWlZHCPRPBvAaXoJj/AxE97nGA6dt67hIwAygUj6gck7zRvjHKkCmeW5pfWDh3M5YeGMkpmD1TPmZASmY5YqrEZfmpddJvpQArBUX1DDvmaXuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YYrpxRvg4FWGVlybxyXoe3jDe/613HXdKseNyXgGr0Q=;
 b=MveFqlWRZRZZgyWqynCT7LxdEjTA7BwzQR+u93e+kTgA9aKVOrAkQhs0nmGU48EYtStO/K/r1exurxipgM7WyFxiJAcqpGji7xEp/4JtK95D60X+ezIsKJQ8aTgorhqMRQn5Vf/XeAWU0+6RMTRuX6fER9jprc8edrpSyGh9btg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by DM6PR12MB4233.namprd12.prod.outlook.com (2603:10b6:5:210::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Wed, 22 Nov
 2023 08:57:34 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::39a2:42da:ea20:3349]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::39a2:42da:ea20:3349%5]) with mapi id 15.20.7002.028; Wed, 22 Nov 2023
 08:57:34 +0000
Message-ID: <808270d3-2274-4fb7-a397-38538503b67c@amd.com>
Date: Wed, 22 Nov 2023 09:57:11 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Dragan Simic <dsimic@manjaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, wens@kernel.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
 <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
 <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
 <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
X-ClientProxiedBy: VI1PR0102CA0086.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::27) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|DM6PR12MB4233:EE_
X-MS-Office365-Filtering-Correlation-Id: f3923fbf-308f-4120-b8f7-08dbeb39113f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VCaq5Or9NfojIy8esvM4+pLdiwnS7XFOCPIq9L637W8p6m1sLanuMIVjDoC5eeg1NcYTzXEmmyzRHIl3Mj1ppwXky/1iF+RPBbB/LVZ4gApn6kjns9XnyiAydSyX5z1J76kgDsrY9Y0CTIZT9Ace47dIn+HNqgmKZAk2Alwq7K0nNWcrSqBYwQtbFwYheqVzzRrKzfDkJzf9scWrjgOa25XSsYbHoC61gHx16BBwITRIaUYqmpTn92/z2D59KcjnGDZ8oX/v+q1ucOXg54+dYmKi/N5phsNahv1E4SQKlkIbmAzzBURS6kvY4yJHzMwmn/yF7tEXZG3oS6MFmhap2hdZwb+yTuCLOLm/EUOkKNp2uMIomOA6Y8vA94HWPI4G7WNBt5qIMoKXRpErnoabLbIdabEOH1u+Qfv3fySJbLYcDDfO9Jx9058bNl++PWpVw6w12bTXehZYRbVQtvwF7HoWI0M4ASslBR/8HlgrXzuKt81un6pRXMaXG+guLq3xluQJU6BUb9tbNdNL3vFI5jSLhEleLqZIyq9Gzp4/40sHMvvQfkys2NGuNvdRkeUyJzPRQEbVun/sFGlvfyz21jhnFdJ1YrjLcRM68sA0ECOhIQL/spsJk5SRlaUasPNiDL1V7TN5tqSWErkvgcLeUA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(376002)(136003)(346002)(396003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(31686004)(2616005)(26005)(6512007)(36756003)(31696002)(86362001)(38100700002)(83380400001)(7416002)(66574015)(5660300002)(44832011)(2906002)(4001150100001)(6666004)(478600001)(53546011)(6506007)(54906003)(4326008)(8676002)(316002)(6916009)(41300700001)(8936002)(66476007)(6486002)(66946007)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3NJblhCUTBrZytDSlhiOUtSYXNLMldnTGJ6Rk42K1pWY0ZQV0UxN1hHWWFq?=
 =?utf-8?B?d3VQbXNrRG5UOEN3Mis2MXRpbUZZOTQwZ1RYM1plNmRjd3RUU1J0NEJwbTJp?=
 =?utf-8?B?Y082TVhWbkczRkM5UzlUOWxQaXBLaDdHaDNLb0R4TDlmZ0lLa2VyYmN3VkM5?=
 =?utf-8?B?YVVIYXF4US9JRE83M1E0MkU3TnV1K2haU1JCSXF2QjcyMkZxa3lzQkVuSHdx?=
 =?utf-8?B?emY1LzFjS3VIaTNWdndSTjJXeUZ5UnpWNkhzSjlxVnh6akJ3bWVQajIrUzZu?=
 =?utf-8?B?UGFENnJLZW9KcTBHK0owTDBxam5DYXlBMnh6TGYwZGk1aDJCNUpOek5CNVNC?=
 =?utf-8?B?R082WUVyZUtkR3ZjRTU2Mit0TFhvWHJ2Rlg0eUJOSmkwZlJXbnhKS3N0TTdE?=
 =?utf-8?B?cWs2SThnVm9ZVDlmaVpOMW9lN3l6R1VnTnZMMXhJZzkzM2lMQ28zd0w0VnUy?=
 =?utf-8?B?OCsyYUdNam5STC9UZVl2cWZBQ2hnRHVyRVl2SW1EajFzRHZVdjN4NjZpa0VL?=
 =?utf-8?B?R3pvVGU2REU0WXZ4MFZyRGhLRkg1OE55R3VVa3FmaW1pRjJldTBoK2g4QytX?=
 =?utf-8?B?MVlpT3pEeHQvV05uTXJJS0RnbWdabmFrSVMzRlJFdVUzV0tzN1U2S1NWei9Q?=
 =?utf-8?B?QTV0UWhFeFFYVVVsZldCL29BMDQ0aVpQdFVxekpoUUs2QUYwMTRWc0I3d2tJ?=
 =?utf-8?B?ZzVuRjU3VHBXSWh5TnNwdzA1elJNd1NldjZrUXpmWXdWdnpoOUtkNHZHTUor?=
 =?utf-8?B?NmxmdXhnY1NtSkZUODRBQkJqRGt2VzJWVkdoUmZpN2xLeCs5eDdsUlF3bDMr?=
 =?utf-8?B?dnhZU05SNXZtMlRkRnVpMUlCd2NIeTdMSHMzNXdKRkxUaTYvK1V3b2tQSjR6?=
 =?utf-8?B?N3doUU9xcUpMelVJcnpoQ1E1YkFaUnJoblJQU1JPVkpsNTRoNWx6Z1h1UzVU?=
 =?utf-8?B?ak82UVIwMkUvZGd5MFVwVnRjbEdyYjJkVnEvMkNZZzFRMk5nUlBkY1B6Z2Vi?=
 =?utf-8?B?WWovTUJzdUxOZlNnbU1JSVcwdTh5RTRzNjFJbWxtcTlsaEk2eTIxT3I1UE1v?=
 =?utf-8?B?NXQ0WGRVaXg3ZTVHNGY2akJ4aUllUFB0dGY4Z1VreVpRQnkzSWJnZysxaHFk?=
 =?utf-8?B?MXQ5U0VNQ3dSZG16ME5kbHV5SEozTFpxbmxCNEh3ckJzZFBBY3VNZFJhTTZp?=
 =?utf-8?B?V2I4NHRWMXRRS095VlJXZXdZYjhKUFp2K1BERXA1NHRqUlY0QTJHL2tZNlBr?=
 =?utf-8?B?dXl2UThFUEZ1bDQ2SFhKQU4xOHBsUUlHclpKdGRET3R0cTBaNHN5ZUI5UHgy?=
 =?utf-8?B?U25XYkk2M1VKOEJUb1BpT05IdWc0NzVxcVFKNWt5bXM2L3duMnlTMDlWR1U1?=
 =?utf-8?B?TUtUdFlkZ09tVGtsbytDWWtSUDY2TGVFZXpvVGcwSFY4VGZCUjY0akxvWUE3?=
 =?utf-8?B?SVI5MzRRL1h5NjlVWFZtWTFGZzYzZ2tCSUZmZERYWHFHMGVWMEQzV3RPQzhE?=
 =?utf-8?B?ZGE0Vy9PdktQbGxOTlpFVXB5WVNaWFBQWHcwd25KWTRJQmp0MDFoQnZ6NEZV?=
 =?utf-8?B?d1NwYzhPRVVEci9FTkwrcDUzbmNwenJOYy9hQ2E2VHFINTBBcSs4Vm1kQ2dK?=
 =?utf-8?B?SHV4WmpwY2VnYitxUVNWZ3lxejZyYU8rMlYzWTBRc1puYitqMnRTL1NiMThT?=
 =?utf-8?B?eUFpb2JoditKOFRXWWJiM0JkcThqaTdWV1pKMzFCUUcwY2orUW9TWXFLNDRU?=
 =?utf-8?B?cE9QYmZTNTdzME15TG9rYmJnTnJ6NlhxcCt0cFFmbnZqZmFFL1pZZ2pCbnNL?=
 =?utf-8?B?cTVCd0M0VkVlanVFMVlNTi82U1RNTVp1NVhLdnNSTWNPS29PS1pCNGVUalpH?=
 =?utf-8?B?L0ZZM0hWb0dleWNKaHp0UitYL09lZVVFR3B2bzcwNEd6Wjk3RG5mRTJ4dkRB?=
 =?utf-8?B?bWREelhMcTlvQlovOWlNQ3h4aFZlVlhWQTF4Q3V6ZEIvNWtOOXIvWnZJMWky?=
 =?utf-8?B?c2J5em93WnBuTFlzM2dYcC9Od2JvZi9hRDFHc3lxSXROZnMrdi95eXJPdVVV?=
 =?utf-8?B?bDlwOE1DcUFJOWM2ZUZOS3V4bVhkYzRvWWE3RkExMG5sbG1HaDhackhWWDdu?=
 =?utf-8?Q?uPHLGzJRy2d6by8g0Ksp0I0HW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3923fbf-308f-4120-b8f7-08dbeb39113f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2023 08:57:34.0946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qJNdU2UEOry2Hs0E6YjI5zdbghJ6DO0xMd9KG354WuY3D0zNF8ri2hOKc8RoWEIT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_005740_044012_2D70485C 
X-CRM114-Status: GOOD (  17.64  )
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

SGkgR2VlcnQsCgpPbiAxMS8yMi8yMyAwOTo1MywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
IEhpIE1pY2hhbCwKPiAKPiBPbiBXZWQsIE5vdiAyMiwgMjAyMyBhdCA5OjUw4oCvQU0gTWljaGFs
IFNpbWVrIDxtaWNoYWwuc2ltZWtAYW1kLmNvbT4gd3JvdGU6Cj4+IE9uIDExLzIyLzIzIDA5OjI5
LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+PiBPbiAyMDIzLTExLTIyIDA5OjIxLCBLcnp5c3p0b2Yg
S296bG93c2tpIHdyb3RlOgo+Pj4+IE9uIDIyLzExLzIwMjMgMDk6MDksIENoZW4tWXUgVHNhaSB3
cm90ZToKPj4+Pj4gT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgNDowNeKAr1BNIEtyenlzenRvZiBL
b3psb3dza2kKPj4+Pj4gPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4+
Pj4+Pgo+Pj4+Pj4gT24gMjEvMTEvMjAyMyAxNDo1MCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+
Pj4+Pj4+PiArT3JkZXIgb2YgUHJvcGVydGllcyBpbiBEZXZpY2UgTm9kZQo+Pj4+Pj4+PiArLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICtGb2xs
b3dpbmcgb3JkZXIgb2YgcHJvcGVydGllcyBpbiBkZXZpY2Ugbm9kZXMgaXMgcHJlZmVycmVkOgo+
Pj4+Pj4+PiArCj4+Pj4+Pj4+ICsxLiBjb21wYXRpYmxlCj4+Pj4+Pj4+ICsyLiByZWcKPj4+Pj4+
Pj4gKzMuIHJhbmdlcwo+Pj4+Pj4+PiArNC4gU3RhbmRhcmQvY29tbW9uIHByb3BlcnRpZXMgKGRl
ZmluZWQgYnkgY29tbW9uIGJpbmRpbmdzLCBlLmcuIHdpdGhvdXQKPj4+Pj4+Pj4gKyAgIHZlbmRv
ci1wcmVmaXhlcykKPj4+Pj4+Pj4gKzUuIFZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0aWVzCj4+Pj4+
Pj4+ICs2LiBzdGF0dXMgKGlmIGFwcGxpY2FibGUpCj4+Pj4+Pj4+ICs3LiBDaGlsZCBub2Rlcywg
d2hlcmUgZWFjaCBub2RlIGlzIHByZWNlZGVkIHdpdGggYSBibGFuayBsaW5lCj4+Pj4+Pj4+ICsK
Pj4+Pj4+Pj4gK1RoZSAic3RhdHVzIiBwcm9wZXJ0eSBpcyBieSBkZWZhdWx0ICJva2F5IiwgdGh1
cyBpdCBjYW4gYmUgb21pdHRlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgdGhpbmsgaXQgd291bGQgcmVh
bGx5IGhlbHAgdG8gaW5jbHVkZSBwb3NpdGlvbiBvZiAjYWRkcmVzcy1jZWxscyBhbmQKPj4+Pj4+
PiAjc2l6ZS1jZWxscyBoZXJlLiBJbiBzb21lIGZpbGVzIEkgc2F3IHRoZW0gYWJvdmUgImNvbXBh
dGlibGUiIHRoYXQgc2VlbXMKPj4+Pj4+PiB1bmludHVpdGl2ZS4gU29tZSBwcmVmZXIgcHV0dGlu
ZyB0aGVtIGF0IGVuZCB3aGljaCBJIHRoaW5rIG1ha2VzIHNlbnNlCj4+Pj4+Pj4gYXMgdGhleSBh
ZmZlY3QgY2hpbGRyZW4gbm9kZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBXaGF0ZXZlciB5b3UgY2hvb3Nl
IGl0J2QgYmUganVzdCBuaWNlIHRvIGhhdmUgdGhpbmdzIGNvbnNpc3RlbnQuCj4+Pj4+Pgo+Pj4+
Pj4gVGhpcyBpcyBhIHN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0eSwgdGh1cyBpdCBnb2VzIHRvICg0
KSBhYm92ZS4KPj4+Pj4KPj4+Pj4gSXQncyBwcm9iYWJseSBhIG1peCwgYnV0IEFGQUlLIGEgbG90
IG9mIHRoZSBkZXZpY2UgdHJlZXMgaW4gdHJlZSBoYXZlCj4+Pj4+ICMqLWNlbGxzIGFmdGVyICJz
dGF0dXMiLiBJbiBzb21lIGNhc2VzIHRoZXkgYXJlIGFkZGVkIGluIHRoZSBib2FyZAo+Pj4+PiAu
ZHRzIGZpbGVzLCBub3QgdGhlIGNoaXAvbW9kdWxlIC5kdHNpIGZpbGVzLgo+Pj4+Cj4+Pj4gRXhp
c3RpbmcgRFRTIGlzIG5vdCBhIGdvb2QgZXhhbXBsZSA6KQo+Pj4+Cj4+Pj4+Cj4+Pj4+ICsxIHRo
YXQgaXQgbWFrZXMgc2Vuc2UgYXQgdGhlIGVuZCBhcyB0aGV5IGFmZmVjdCBjaGlsZCBub2Rlcy4K
Pj4+Pgo+Pj4+IEkgc3RpbGwgaW5zaXN0IHRoYXQgc3RhdHVzIG11c3QgYmUgdGhlIGxhc3QsIGJl
Y2F1c2U6Cj4+Pj4gMS4gTWFueSBTb0Mgbm9kZXMgaGF2ZSBhZGRyZXNzL3NpemUgY2VsbHMgYnV0
IGRvIG5vdCBoYXZlIGFueSBjaGlsZHJlbgo+Pj4+IChJMkMsIFNQSSksIHNvIHdlIHB1dCB1c2Vs
ZXNzIGluZm9ybWF0aW9uIGF0IHRoZSBlbmQuCj4+Pj4gMi4gU3RhdHVzIHNob3VsZCBiZSB0aGUg
ZmluYWwgaW5mb3JtYXRpb24gdG8gc2F5IHdoZXRoZXIgdGhlIG5vZGUgaXMKPj4+PiByZWFkeSBv
ciBpcyBub3QuIEkgcmVhZCB0aGUgbm9kZSwgY2hlY2sgcHJvcGVydGllcyBhbmQgdGhlbiBsb29r
IGF0IHRoZSBlbmQ6Cj4+Pj4gYS4gTGFjayBvZiBzdGF0dXMgbWVhbnMgaXQgaXMgcmVhZHkuCj4+
Pj4gYi4gc3RhdHVzPWRpc2FibGVkIG1lYW5zIGRldmljZSBzdGlsbCBuZWVkcyBib2FyZCByZXNv
dXJjZXMvY3VzdG9taXphdGlvbgo+Pj4KPj4+IEkgYWdyZWUgd2l0aCB0aGUgInN0YXR1cyIgYmVs
b25naW5nIHRvIHRoZSB2ZXJ5IGVuZCwgYmVjYXVzZSBpdCdzIGJvdGggbG9naWNhbAo+Pj4gYW5k
IG11Y2ggbW9yZSByZWFkYWJsZS4gIEFsc28sICJzdGF0dXMiIGlzIGV4cGVjdGVkIHRvIGJlIG1v
ZGlmaWVkIGluIHRoZQo+Pj4gZGVwZW5kZW50IERUIGZpbGVzLCB3aGljaCBtYWtlcyBpdCBraW5k
IG9mIHZvbGF0aWxlIGFuZCBldmVuIG1vcmUgZGVzZXJ2aW5nIHRvCj4+PiBiZSBwbGFjZWQgbGFz
dC4KPj4KPj4gSSBhbSBqdXN0IGN1cmlvdXMgaWYgaGF2aW5nIHN0YXR1cyBwcm9wZXJ0eSBhdCB0
aGUgZW5kIHdvbid0IGFmZmVjdAo+PiBleGVjdXRpb24vYm9vdCB1cCB0aW1lLiBOb3Qgc3VyZSBo
b3cgaXQgaXMgZG9uZSBpbiBMaW51eCBidXQgaW4gVS1Cb290IGF0IGxlYXN0Cj4+ICh3ZSB3YW50
IHRvIGhhdmUgRFRzIGluIHN5bmMgYmV0d2VlbiBMaW51eCBhbmQgVS1Cb290KSBvZl9maW5kX3By
b3BlcnR5IGlzCj4+IHByZXR0eSBtdWNoIGJpZyBsb29wIG92ZXIgYWxsIHByb3BlcnRpZXMuIEFu
ZCBzdGF0dXMgcHJvcGVydHkgZGVmaW5lZCBhdCB0aGUgZW5kCj4+IG1lYW5zIGdvaW5nIG92ZXIg
YWxsIG9mIHRoZW0gdG8gZmluZCBpdCBvdXQgdG8gaWYgZGV2aWNlIGlzIHByZXNlbnQuCj4+IE5v
dCBzdXJlIGlmIExpbnV4IHdvcmtzIGluIHRoZSBzYW1lIHdheSBidXQgYXQgbGVhc3Qgb2ZfZ2V0
X3Byb3BlcnR5IGlzIGRvbmUgaW4KPj4gdGhlIHNhbWUgd2F5Lgo+IAo+IEFzIHRoZSBkZWZhdWx0
IGlzICJva2F5IiwgeW91IGhhdmUgdG8gbG9vcCBvdmVyIGFsbCBwcm9wZXJ0aWVzIGFueXdheS4K
Ck5vIGRvdWJ0IGlmIHlvdSBkb24ndCBkZWZpbmUgc3RhdHVzIHByb3BlcnR5IHRoYXQgeW91IG5l
ZWQgdG8gbG9vcCBvdmVyIGFsbCBvZiAKdGhlbS4gV2Ugbm9ybWFsbHkgZGVzY3JpYmUgdGhlIHdo
b2xlIFNPQyB3aXRoIHByZXR0eSBtdWNoIGFsbCBJUHMgc3RhdHVzID0gCmRpc2FibGVkIGFuZCB0
aGVuIGluIGJvYXJkIGZpbGUgd2UgYXJlIGNoYW5naW5nIGl0IHRvIG9rYXkgYmFzZWQgb24gd2hh
dCBpdCBpcyAKYWN0dWFsbHkgd2lyZWQgb3V0LgpJdCBtZWFucyBvbiBvdXIgc3lzdGVtcyBhbGwg
bm9kZXMgaGF2ZSBzdGF0dXMgcHJvcGVydGllcy4gSWYgeW91IGhhdmUgaXQgYXQgCmZpcnN0IHlv
dSBkb24ndCBuZWVkIHRvIGdvIG92ZXIgYWxsLgoKVGhhbmtzLApNaWNoYWwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
